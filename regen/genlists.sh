echo "
aptly
lighttpd
openssl
" > config/package-lists/aptly.list.chroot
echo "
blueman
bluetooth
#bluewho
pulseaudio-module-bluetooth
pulseaudio-module-bluetooth-dbg
" > config/package-lists/bluetooth.list.chroot
echo "
anjuta
anjuta-common
anjuta-extras
build-essential
cgdb
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
git
libc6-dev
libc6-dbg
libsodium-dev
libsodium-dbg
lintian
make
pbuilder
python-rope
valac
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
conky-std
desktop-base
desktop-file-utils
mousepad
guake
lightdm
lightdm-vala
lightdm-gtk-greeter
tilda
tomboy
xfce4-settings-manager
" > config/package-lists/desktop.list.chroot
echo "
abiword
abiword-common
abiword-plugin-grammar
abiword-plugin-mathview
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
" > config/package-lists/documents.list.chroot
echo "
hydra
john
#sqlmap
sslscan
sslsniff
sslstrip
thc-ipv6
w3af
w3af-console
wireshark
yersinia
" > config/package-lists/exploit.list.chroot
echo "
fdroidserver
" > config/package-lists/fdroid.list.chroot
echo "
macchanger
bleachbit
florence
parcimonie
freepto-passwords-changer
tomb
#torbrowser-launcher
tortp
python-stem
tortp-gtk
python-tortp
freepto-usb-utils
freepto-certificates
" > config/package-lists/freepto.list.chroot
echo "
crawl-common
crawl-tiles
crawl-tiles-data
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
epiphany-browser
epiphany-browser-data
enigmail
filezilla
filezilla-common
foxyproxy
hexchat
icedove
icedove-dispmua
iceweasel
liferea
liferea-data
lynx
lynx-cur
pidgin
pidgin-data
#pidgin-gnome-keyring
pidgin-otr
xul-ext-adblock-plus
xul-ext-certificatepatrol
xul-ext-cookie-monster
xul-ext-dispmua
xul-ext-firebug
xul-ext-foxyproxy-standard
xul-ext-gnome-keyring
xul-ext-https-everywhere
xul-ext-noscript
xul-ext-perspectives
xul-ext-refcontrol
xul-ext-requestpolicy
xul-ext-useragentswitcher
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
banshee
totem
totem-common
totem-plugins
" > config/package-lists/media.list.chroot
echo "
batctl
batmand
curl
horst
nmap
transmission-common
transmission-gtk
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
secure-delete
" > config/package-lists/paranoid.list.chroot
echo "
twister-core
utox
#tox-bootstrapd
#libtoxcore
#libtoxcore-dev
turpial
" > config/package-lists/social.list.chroot
echo "
deb.torproject.org-keyring
privoxy
tor
tor-arm
tor-geoipdb
torsocks
xul-ext-torbirdy
" > config/package-lists/tor.list.chroot
echo "
firmware-linux-free
laptop-mode-tools
gksu
linux-image-amd64
sudo
syslinux-common
syslinux-efi
user-setup
" > config/package-lists/system.list.chroot
echo "
lshw
#unetbootin
#unetbootin-translations
usbutils
" > config/package-lists/utils.list.chroot
echo "
aircrack-ng
reaver
wifite
" > config/package-lists/wifi.list.chroot
