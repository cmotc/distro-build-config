echo "
aptly
lighttpd
openssl
" > config/package-lists/aptly.list.chroot
echo "
bluetooth
bluewho
pulseaudio-module-bluetooth
pulseaudio-module-bluetooth-dbg
" > config/package-lists/bluetooth.list.chroot
echo "
anjuta
anjuta-common
anjuta-extras
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
gedit
gedit-common
gedit-dev
gedit-plugins
gedit-source-code-browser-plugin
git
gperf
intltool
libasound2-dev
libc6-dev
libc6-dbg
libcairo2-dev
libcurl4-openssl-dev
libdbus-1-dev
libev-dev
libimlib2-dev
libltdl-devlibtool
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
libstartup-notification0-dev
libsodium-dev
libsodium-dbg
libtox-dev
libtoxcore0
libtoxcore-dev
libtoxav0
libtoxav-dev
libtoxencryptsave0
libtoxencryptsave-dev
libtoxdns0
libtoxdns-dev
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
libxt-dev 
libiw-dev 
libidl-dev 
mesa-common-dev 
autoconf2.13 
yasm libgtk2.0-dev 
libdbus-1-dev 
libdbus-glib-1-dev 
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
pbuilder
pidgin-dev
purple-dev
python-rope
tig
valac
valgrind
xmlto
zip
" > config/package-lists/code.list.chroot
echo "
anoncoind
#bitcoind
#litecoind
namecoin
" > config/package-lists/coins.list.chroot
echo "
apt-transport-https
apt-transport-tor
apt-p2p
dconf-cli
dconf-editor
dconf-gsettings-backend:amd64
dconf-service
dconf-tools
dctrl-tools
debconf
debconf-i18n
debhelper
debian-archive-keyring
debian-faq
debian-keyring
debianutils
debootstrap
doc-debian
dpkg
dpkg-dev
dpkg-sig
" > config/package-lists/debian.list.chroot
echo "
awesome
awesome-extra
awesome-lightdm-session
compton
conky-std
dialog
network-manager
mc
lightdm
lightdm-vala
lightdm-gtk-greeter
pcmanfm
svirfneblin-panel
svirfneblin-*
terminator
x11-apps
xcalc
wcalc
xterm
xdialog
" > config/package-lists/desktop.list.chroot
echo "
abiword
abiword-common
abiword-plugin-grammar
abiword-plugin-mathview
caca-utils
dia
dia-common
dia-libs
dia-shapes
gnumeric
gnumeric-common
gnumeric-doc
imagemagick
imagemagick-6.q16
imagemagick-common
markdown
pinta
" > config/package-lists/documents.list.chroot
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
" > config/package-lists/exploit.list.chroot
echo "
fdroidserver
" > config/package-lists/fdroid.list.chroot
echo "
crawl-common
crawl-tiles
crawl-tiles-data
freeciv-client-sdl
wesnoth
" > config/package-lists/games.list.chroot
echo "
apparmor
apparmor-docs
apparmor-profiles
apparmor-utils
ferm
#harden
#harden-development
#harden-tools
#hardening-includes
fireblock
hidblock
nufw
rkhunter
" > config/package-lists/harden.list.chroot
echo "
i2p
i2p-keyring
i2p-router
killyourtv-keyring
" > config/package-lists/i2p.list.chroot
echo "
alpine
finch
hexchat
lynx
lynx-cur
mutt
ncftp
" > config/package-lists/internet.list.chroot
echo "
live-boot
live-boot-doc
live-build
live-config
live-config-doc
live-config-systemd
live-manual-html
" > config/package-lists/live.list.chroot
echo "
cmus
imagemagick
quodlibet
vlc
" > config/package-lists/media.list.chroot
echo "
batctl
batmand
curl
horst
netcat
nmap
ntop
rtorrent
wget
youtube-dl
" > config/package-lists/network.list.chroot
echo "
apg
bleachbit
blueproximity
gnupg
gnupg-agent
gnupg2
macchanger
mat
parcimonie
secure-delete
" > config/package-lists/paranoid.list.chroot
echo "
irssi
toxic
#twister
#tox-bootstrapd
" > config/package-lists/social.list.chroot
echo "
deb.torproject.org-keyring
mumble
privoxy
tor
tor-arm
tor-geoipdb
torsocks
" > config/package-lists/tor.list.chroot
echo "
firmware-linux-free
laptop-mode-tools
linux-image-amd64
sudo
syslinux-common
syslinux-efi
user-setup
" > config/package-lists/system.list.chroot
echo "
lshw
htop
usbutils
" > config/package-lists/utils.list.chroot
echo "
aircrack-ng
reaver
wifite
" > config/package-lists/wifi.list.chroot
