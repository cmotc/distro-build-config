#!/bin/bash

#################
# This script will populate a "aptly" repository with packages built from fireaxe
# 
#################

tmp_repo=$1
if [ -z "$tmp_repo" ]; then
	tmp_repo="fireaxe_$(date '+%y%m%d%H%M')_$(git rev-parse HEAD | head -c 8)"
fi
aptly repo create "$tmp_repo"
putinrepo() {
	aptly repo add "$tmp_repo" "$1"
}
reposummary() {
	echo "# Status of repository after building:"
	aptly repo show -with-packages "$tmp_repo"
}

# LOAD CONFIGURATION:
if [ -r config/fireaxe ]; then
  echo "Reading fireaxe configuration file...." >&2
  . config/fireaxe
fi
if [ -r config/fireaxe.local ]; then
  echo "Reading fireaxe local configuration file...." >&2
  . config/fireaxe.local
fi

_build_packages() {
	mkdir -p config/packages.chroot/
	find -L pkgs -maxdepth 2 -type f -name '*.deb' -delete
	find -L pkgs -maxdepth 1 -mindepth 1 -type d | \
		while read pkg; do
			_build_package "$pkg" || return 1
			if [[ "$?" -ne 0 ]]; then
				echo "ERROR: build for package $pkg failed" >&2
			fi
		done
}

_build_package() {
	olddir=$(pwd)
	dir=$1
	echo "## Build pkg in $dir"
	cd "$dir"
	set -e
	old_proxy=$http_proxy
	export http_proxy=
	if [ -x make_deb ]; then
		./make_deb
	elif [ -f deb ]; then
		equivs-build -f deb
		#TODO: if debian/rules blabla
	elif [ -d debian ]; then
		debuild -i -F
	fi
	http_proxy=$old_proxy
	cd "$olddir"
}

if [[ -d pkgs/ ]]; then
	set -o pipefail
	echo "### Build sub-packages"
	_build_packages 2>&1 | tee pkgs.log
	if [ $? -ne 0 ]; then
		echo "Error: Failure at build-packages phase" >&2
		exit 1
	fi
	echo "### Installing build packages"
	putinrepo pkgs
	reposummary
	echo "Repo ready: $tmp_repo"
fi
