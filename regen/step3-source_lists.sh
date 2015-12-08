#! /bin/sh
echo "##Crafting the sources.list entries"

echo "#deb https://mirror.cse.unsw.edu.au/debian/ jessie main
#deb-src https://mirror.cse.unsw.edu.au/debian/ jessie main
deb https://mirror.cse.unsw.edu.au/debian-security/ jessie/updates main
deb-src https://mirror.cse.unsw.edu.au/debian-security/ jessie/updates main
deb https://mirror.cse.unsw.edu.au/debian/ jessie-updates main
deb-src https://mirror.cse.unsw.edu.au/debian/ jessie-updates main
deb https://mirror.cse.unsw.edu.au/debian/ sid main
deb-src https://mirror.cse.unsw.edu.au/debian/ sid main
deb https://mirror.cse.unsw.edu.au/debian/ experimental main
deb-src https://mirror.cse.unsw.edu.au/debian/ experimental main
" > config/archives/debian.list.chroot
cp config/archives/debian.list.chroot config/archives/debian.list.binary

echo "deb http://deb.torproject.org/torproject.org jessie main
deb-src http://deb.torproject.org/torproject.org jessie main
" > config/archives/tor.list.chroot
cp config/archives/tor.list.chroot config/archives/tor.list.binary

echo 'deb http://download.opensuse.org/repositories/home:/p_conrad:/coins/Debian_8.0/ /
deb-src http://download.opensuse.org/repositories/home:/p_conrad:/coins/Debian_8.0/ /
' > config/archives/namecoin.list.chroot
cp config/archives/namecoin.list.chroot config/archives/namecoin.list.binary

echo "deb http://deb.i2p2.no/ unstable main
deb-src http://deb.i2p2.no/ unstable main
" > config/archives/i2p2.list.chroot
cp config/archives/i2p2.list.chroot config/archives/i2p2.list.binary

echo "deb https://pkg.tox.chat/debian nightly main
" > config/archives/toxim.list.chroot
cp config/archives/toxim.list.chroot config/archives/toxim.list.binary

echo "deb https://cmotc.github.io/apt-git/debian/ testing main
" > config/archives/cmotc.github.io.list.chroot
cp config/archives/cmotc.github.io.list.chroot config/archives/cmotc.github.io.list.binary

#echo "deb http://ppa.launchpad.net/podshumok/twister-core-daily/ubuntu trusty main 
#deb-src http://ppa.launchpad.net/podshumok/twister-core-daily/ubuntu trusty main 
#" > config/archives/twister.list.chroot
#cp config/archives/twister.list.chroot config/archives/twister.list.binary

echo "Package: *
Pin: release a=jessie
Pin-Priority: 900
Package: *
Pin: release a=sid
Pin-Priority: 600
Package: *
Pin: release a=experimental
Pin-Priority: 500
" > config/archives/debian.pref.chroot
cp config/archives/debian.pref.chroot config/archives/debian.pref.binary

echo "Package: brasero
Pin: version *
Pin-Priority: -1
Package: k3b
Pin: version *
Pin-Priority: -1
Package: exfalso
Pin: version *
Pin-Priority: -1
Package: uzbl
Pin: version *
Pin-Priority: -1
Package: xterm
Pin: version *
Pin-Priority: -1
Package: uxterm
Pin: version *
Pin-Priority: -1
Package: vala-terminal
Pin: version *
Pin-Priority: -1
Package: libreoffice-base
Pin: version *
Pin-Priority: -1
Package: exim4-daemon-light
Pin: version *
Pin-Priority: -1
Package: exim4-daemon-heavy
Pin: version *
Pin-Priority: -1
Package: minissdpd
Pin: version *
Pin-Priority: -1
Package: epdfview
Pin: version *
Pin-Priority: -1
" > config/apt/preferences