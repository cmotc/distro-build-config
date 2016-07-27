#! /bin/sh
DIRECTORY=$(cd `dirname $0` && pwd)
echo "
openssl
" > "$DIRECTORY/../config/package-lists/aptly.list.chroot"
echo "
bluetooth
blueproximity
btscanner
" > "$DIRECTORY/../config/package-lists/bluetooth.list.chroot"
echo "
#Uncomment_these_lines_if_you_want_a_fully-fledged_IDE.
#anjuta
#anjuta-common
#anjuta-extras
asciidoc
autoconf
automake
autotools-dev
build-essential
cmake
cgdb
debhelper
devhelp-common
devscripts
dh-make
doc-base
docbook-xml
docutils-common
docutils-doc
doxygen
dpkg-dev
gcc
g++
medit
git
globus-simple-ca
gperf
intltool
libasound2-dev
libboost-dev
libboost-chrono-dev
libboost-filesystem-dev
libboost-program-options-dev
libboost-system-dev
libboost-test-dev
libboost-thread-dev
libc6-dev
libc6-dbg
libcairo2-dev
libcurl4-openssl-dev
libdb-dev
libev-dev
libevent-dev
libgtk2.0-dev 
libimlib2-dev
libltdl-dev
libtool
liblua5.1-dev
liblua5.2-dev
libnotify-dev
libgcrypt11-dev
libgcrypt20-dev
libgpg-error-dev 
libotr5
libotr5-bin
libotr5-dev
libpango1.0-dev
libssl-dev
libstartup-notification0-dev
libsodium-dev
libsodium-dbg
libstdc++-4.8-dev
#libtox-dev
#libtoxcore0
#libtoxcore-dev
#libtoxav0
#libtoxav-dev
#libtoxencryptsave0
#libtoxencryptsave-dev
#libtoxdns0
#libtoxdns-dev
libx11-xcb-dev
libxcb1-dev
libxcb-image0-dev
libxcb-icccm4-dev
libxcb-keysyms1-dev
libxcb-randr0-dev
libxcb-shape0-dev
libxcb-util0-dev
libxcb-xinerama0-dev
libxcb-xtest0-dev
libxcursor-dev
libxdg-basedir-dev 
libxdo-dev
libxt-dev 
libiw-dev 
libidl-dev 
mesa-common-dev 
autoconf2.13 
yasm
python-dev 
libgstreamer0.10-dev 
libgstreamer-plugins-base0.10-dev 
libpulse-dev
lintian
lua5.1 
lua5.2
luadoc
lua-ldoc
make
mercurial
moreutils
nodejs
nodejs-legacy
pbuilder
python-rope
tig
valac
valgrind
xmlto
zip
" > "$DIRECTORY/../config/package-lists/code.list.chroot"
echo "
#anoncoind
#bitcoind
#litecoind
#namecoin
" > "$DIRECTORY/../config/package-lists/coins.list.chroot"
echo "
alsa-base
alsa-tools
alsa-utils
alsa-oss
alsamixergui
apt-transport-https
apt-transport-tor
apt-p2p
dctrl-tools
debconf
debconf-i18n
debhelper
debian-archive-keyring
debian-faq
debian-keyring
debianutils
debootstrap
debsecan
debian-security-support
doc-debian
dpkg
dpkg-dev
dpkg-sig
gom
libalsaplayer0
openrc
#systemd-shim #install_this_for_compatibility_with_systemd_where_necessary
" > "$DIRECTORY/../config/package-lists/debian.list.chroot"
echo "
awesome
awesome-extra
#awesome-lightdm-session
compton
conky-std
dialog
network-manager
#modem-manager
mc
lightdm
lightdm-vala
lightdm-gtk-greeter
pcmanfm
#svirfneblin-panel #Right_now_these_are_just_included_in_etc/skel
#svirfneblin-* #Right_now_these_are_just_included_in_etc/skel
terminator
x11-apps
#xcalc
wcalc
xterm
#xdialog
" > "$DIRECTORY/../config/package-lists/desktop.list.chroot"
echo "
#Uncomment_these_if_you_want_to_use_a_GTK_Based_Office_Suite.
#abiword
#abiword-common
#abiword-plugin-grammar
#abiword-plugin-mathview
#caca-utils
#dia
#dia-common
#dia-libs
#dia-shapes
#gnumeric
#gnumeric-common
#gnumeric-doc
imagemagick
imagemagick-6.q16
imagemagick-common
markdown
pinta
" > "$DIRECTORY/../config/package-lists/documents.list.chroot"
echo "
hydra
john
sqlmap
ophcrack
sslscan
sslsniff
sslstrip
thc-ipv6
wireshark
yersinia
" > "$DIRECTORY/../config/package-lists/exploit.list.chroot"
echo "
fdroidserver
" > "$DIRECTORY/../config/package-lists/fdroid.list.chroot"
echo "
crawl-common
crawl-tiles
crawl-tiles-data
freeciv-client-sdl
wesnoth
" > "$DIRECTORY/../config/package-lists/games.list.chroot"
echo "
apparmor
apparmor-docs
apparmor-profiles
apparmor-utils
ferm
fireblock
hidblock
nufw
rkhunter
" > "$DIRECTORY/../config/package-lists/harden.list.chroot"
echo "
i2p
i2p-keyring
i2p-router
killyourtv-keyring
" > "$DIRECTORY/../config/package-lists/i2p.list.chroot"
echo "
lynx-cur
ncftp
uzbl
xombrero
" > "$DIRECTORY/../config/package-lists/internet.list.chroot"
echo "
live-boot
live-boot-doc
live-build
live-config
live-config-doc
live-config-sysvinit
live-manual-html
" > "$DIRECTORY/../config/package-lists/live.list.chroot"
echo "
cmus
imagemagick
quodlibet
vlc
" > "$DIRECTORY/../config/package-lists/media.list.chroot"
echo "
alfred
batctl
curl
horst
iftop
iptraf-ng
#joker
netcat
nmap
#rtorrent
sntop
wget
youtube-dl
" > "$DIRECTORY/../config/package-lists/network.list.chroot"
echo "
apg
bleachbit
blueproximity
gnupg
gnupg-agent
gnupg2
macchanger
mat
#parcimonie
secure-delete
" > "$DIRECTORY/../config/package-lists/paranoid.list.chroot"
echo "
alpine
irssi
mumble
mutt
profanity
toxic
twidge
#twister
#tox-bootstrapd
" > "$DIRECTORY/../config/package-lists/social.list.chroot"
echo "
deb.torproject.org-keyring
privoxy
tor
tor-arm
tor-geoipdb
torsocks
" > "$DIRECTORY/../config/package-lists/tor.list.chroot"
echo "
bumblebee
firmware-linux-free
laptop-mode-tools
linux-image-amd64
primus
sudo
syslinux-common
syslinux-efi
user-setup
" > "$DIRECTORY/../config/package-lists/system.list.chroot"
echo "
lshw
htop
usbutils
" > "$DIRECTORY/../config/package-lists/utils.list.chroot"
echo "
aircrack-ng
reaver
wifite
" > "$DIRECTORY/../config/package-lists/wifi.list.chroot"
