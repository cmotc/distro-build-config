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
default-jre
default-jre-headless
#icedtea-6-jre-cacao:amd64
#icedtea-6-jre-jamvm:amd64
icedtea-7-jre-jamvm:amd64
icedtea-netx:amd64
icedtea-netx-common





" > config/package-lists/debian.list.chroot
echo "










awesome
awesome-extra
conky-std
desktop-base
desktop-file-utils
gnome-accessibility-themes
gnome-applets
gnome-applets-data
gnome-backgrounds
gnome-bluetooth
gnome-calculator
gnome-color-manager
gnome-contacts
gnome-control-center
gnome-control-center-data
gnome-desktop-data
gnome-desktop3-data
gnome-dictionary
gnome-disk-utility
gnome-documents
gnome-flashback
gnome-flashback-common
gnome-font-viewer
gnome-icon-theme
gnome-icon-theme-extras
gnome-icon-theme-symbolic
gnome-js-common
gnome-keyring
gnome-media
gnome-menus
gnome-mime-data
gnome-nettool
gnome-online-accounts
gnome-online-miners
gnome-orca
gnome-packagekit
gnome-packagekit-data
gnome-packagekit-session
gnome-panel
gnome-panel-data
gnome-power-manager
gnome-screensaver
gnome-screenshot
gnome-session
gnome-session-bin
gnome-session-common
gnome-session-fallback
gnome-session-flashback
gnome-settings-daemon
gnome-shell
gnome-shell-common
gnome-shell-extension-autohidetopbar
gnome-shell-extension-weather
gnome-shell-extensions
gnome-sushi
gnome-system-log
gnome-system-monitor
gnome-terminal
gnome-terminal-data
gnome-themes-standard:amd64
gnome-themes-standard-data
gnome-tweak-tool
gnome-user-guide
gnome-user-share
gnome-video-effects
guake
lightdm
lightdm-vala
lightdm-gtk-greeter
tomboy





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
