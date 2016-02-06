-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Applications_Accessibility"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Applications_Data_Management"] = {
	{"ABook", "x-terminal-emulator -e ".."/usr/bin/abook"},
	{"Gringotts","/usr/bin/gringotts","/usr/share/pixmaps/gringotts-32.xpm"},
}
Debian_menu["Debian_Applications_Editors"] = {
	{"Gedit","/usr/bin/gedit","/usr/share/pixmaps/gedit-icon.xpm"},
	{"Nano", "x-terminal-emulator -e ".."/bin/nano","/usr/share/nano/nano-menu.xpm"},
	{"prerex", "x-terminal-emulator -e ".."/usr/bin/prerex"},
	{"vprerex","/usr/bin/vprerex"},
	{"Xedit","xedit"},
}
Debian_menu["Debian_Applications_File_Management"] = {
	{"Double Commander","/usr/bin/doublecmd","/usr/share/pixmaps/doublecmd.xpm"},
	{"mc", "x-terminal-emulator -e ".."/usr/bin/mc","/usr/share/pixmaps/mc.xpm"},
	{"PCManFM","/usr/bin/pcmanfm"},
	{"Xarchiver","/usr/bin/xarchiver","/usr/share/pixmaps/xarchiver.xpm"},
}
Debian_menu["Debian_Applications_Graphics"] = {
	{"dotty","/usr/bin/dotty"},
	{"lefty","/usr/bin/lefty"},
	{"XSane","/usr/bin/xsane","/usr/share/pixmaps/xsane.xpm"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Applications_Network_Communication"] = {
	{"Icedove Mail","icedove","/usr/share/pixmaps/icedove.xpm"},
	{"Irssi", "x-terminal-emulator -e ".."/usr/bin/irssi"},
	{"Manhole Twisted Client","/usr/bin/manhole"},
	{"Mumble","/usr/bin/mumble","/usr/share/pixmaps/mumble.xpm"},
	{"Mutt", "x-terminal-emulator -e ".."/usr/bin/mutt","/usr/share/pixmaps/mutt.xpm"},
	{"Pidgin","/usr/bin/pidgin","/usr/share/pixmaps/pidgin-menu.xpm"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet"},
	{"Twisted Application Generator","/usr/bin/tkmktap"},
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Applications_Network_File_Transfer"] = {
	{"GNUnet-fs-gtk","/usr/bin/gnunet-fs-gtk","/usr/share/pixmaps/gnunet-gtk.xpm"},
}
Debian_menu["Debian_Applications_Network_Monitoring"] = {
	{"HORST", "x-terminal-emulator -e ".."/usr/bin/su-to-root -c /usr/sbin/horst"},
	{"IPTraf", "x-terminal-emulator -e ".."/usr/bin/su-to-root -c /usr/sbin/iptraf"},
}
Debian_menu["Debian_Applications_Network_Web_Browsing"] = {
	{"Arora","arora","/usr/share/pixmaps/arora.xpm"},
	{"Dillo","/usr/bin/dillo","/usr/share/pixmaps/dillo.xpm"},
	{"Iceweasel","iceweasel","/usr/share/pixmaps/iceweasel.xpm"},
	{"Lynx-cur", "x-terminal-emulator -e ".."lynx"},
	{"w3m", "x-terminal-emulator -e ".."/usr/bin/w3m /usr/share/doc/w3m/MANUAL.html"},
	{"xombrero","/usr/bin/xombrero","/usr/share/pixmaps/xombrero.xpm"},
}
Debian_menu["Debian_Applications_Network"] = {
	{ "Communication", Debian_menu["Debian_Applications_Network_Communication"] },
	{ "File Transfer", Debian_menu["Debian_Applications_Network_File_Transfer"] },
	{ "Monitoring", Debian_menu["Debian_Applications_Network_Monitoring"] },
	{ "Web Browsing", Debian_menu["Debian_Applications_Network_Web_Browsing"] },
}
Debian_menu["Debian_Applications_Office"] = {
	{"AbiWord Word Processor","/usr/bin/abiword","/usr/share/pixmaps/abiword.xpm"},
}
Debian_menu["Debian_Applications_Programming"] = {
	{"anjuta","/usr/bin/anjuta","/usr/share/pixmaps/anjuta.xpm"},
	{"BeanShell (text)", "x-terminal-emulator -e ".."/usr/bin/bsh"},
	{"BeanShell (windowed)","/usr/bin/xbsh"},
	{"Doxywizard","/usr/bin/doxywizard"},
	{"Eclipse","eclipse"},
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"Python (v2.7)", "x-terminal-emulator -e ".."/usr/bin/python2.7","/usr/share/pixmaps/python2.7.xpm"},
	{"Python (v3.4)", "x-terminal-emulator -e ".."/usr/bin/python3.4","/usr/share/pixmaps/python3.4.xpm"},
	{"Tclsh8.6", "x-terminal-emulator -e ".."/usr/bin/tclsh8.6"},
	{"TkWish8.6","x-terminal-emulator -e /usr/bin/wish8.6"},
	{"UniversalIndentgui","/usr/bin/universalindentgui"},
}
Debian_menu["Debian_Applications_Science_Electronics"] = {
	{"Fritzing","/usr/bin/Fritzing","/usr/share/pixmaps/fritzing_icon.xpm"},
}
Debian_menu["Debian_Applications_Science_Mathematics"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"Wcalc", "x-terminal-emulator -e ".."/usr/bin/wcalc","/usr/share/pixmaps/wcalc.xpm"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Applications_Science"] = {
	{ "Electronics", Debian_menu["Debian_Applications_Science_Electronics"] },
	{ "Mathematics", Debian_menu["Debian_Applications_Science_Mathematics"] },
}
Debian_menu["Debian_Applications_Shells"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
}
Debian_menu["Debian_Applications_Sound"] = {
	{"Audacious","/usr/bin/audacious"},
	{"Ex Falso","/usr/bin/exfalso"},
	{"JACK Control","/usr/bin/qjackctl","/usr/share/pixmaps/qjackctl.xpm"},
	{"Quod Libet","/usr/bin/quodlibet"},
	{"STKDemo","/usr/bin/STKDemo"},
}
Debian_menu["Debian_Applications_System_Administration"] = {
	{"bleachbit","/usr/bin/bleachbit","/usr/share/pixmaps/bleachbit.xpm"},
	{"Debian Task selector", "x-terminal-emulator -e ".."su-to-root -c tasksel"},
	{"Editres","editres"},
	{"Reportbug", "x-terminal-emulator -e ".."/usr/bin/reportbug --exit-prompt"},
	{"Reportbug (GTK+)","/usr/bin/reportbug --exit-prompt --ui gtk2"},
	{"TeXconfig", "x-terminal-emulator -e ".."/usr/bin/texconfig"},
	{"Xclipboard","xclipboard"},
	{"Xfce Application Finder","xfce4-appfinder","/usr/share/pixmaps/xfce4-appfinder.xpm"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Applications_System_Hardware"] = {
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Applications_System_Monitoring"] = {
	{"Conky", "x-terminal-emulator -e ".."/usr/bin/conky"},
	{"htop", "x-terminal-emulator -e ".."/usr/bin/htop"},
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Applications_System_Package_Management"] = {
	{"Aptitude Package Manager (text)", "x-terminal-emulator -e ".."/usr/bin/aptitude-curses"},
	{"Synaptic Package Manager","x-terminal-emulator -e synaptic-pkexec","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
}
Debian_menu["Debian_Applications_System"] = {
	{ "Administration", Debian_menu["Debian_Applications_System_Administration"] },
	{ "Hardware", Debian_menu["Debian_Applications_System_Hardware"] },
	{ "Monitoring", Debian_menu["Debian_Applications_System_Monitoring"] },
	{ "Package Management", Debian_menu["Debian_Applications_System_Package_Management"] },
}
Debian_menu["Debian_Applications_Terminal_Emulators"] = {
	{"Sakura","/usr/bin/sakura","/usr/share/pixmaps/terminal-tango.xpm"},
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"X-Terminal as root (GKsu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu-debian.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Applications_Text"] = {
	{"Fortune","sh -c 'while /usr/games/fortune | col -x | xmessage -center -buttons OK:1,Another:0 -default OK -file - ; do :; done'"},
}
Debian_menu["Debian_Applications_Video"] = {
	{"VLC media player","/usr/bin/qvlc","/usr/share/icons/hicolor/32x32/apps/vlc.xpm"},
}
Debian_menu["Debian_Applications_Viewers"] = {
	{"Evince","/usr/bin/evince","/usr/share/pixmaps/evince.xpm"},
	{"Xditview","xditview"},
	{"XDvi","/usr/bin/xdvi"},
}
Debian_menu["Debian_Applications"] = {
	{ "Accessibility", Debian_menu["Debian_Applications_Accessibility"] },
	{ "Data Management", Debian_menu["Debian_Applications_Data_Management"] },
	{ "Editors", Debian_menu["Debian_Applications_Editors"] },
	{ "File Management", Debian_menu["Debian_Applications_File_Management"] },
	{ "Graphics", Debian_menu["Debian_Applications_Graphics"] },
	{ "Network", Debian_menu["Debian_Applications_Network"] },
	{ "Office", Debian_menu["Debian_Applications_Office"] },
	{ "Programming", Debian_menu["Debian_Applications_Programming"] },
	{ "Science", Debian_menu["Debian_Applications_Science"] },
	{ "Shells", Debian_menu["Debian_Applications_Shells"] },
	{ "Sound", Debian_menu["Debian_Applications_Sound"] },
	{ "System", Debian_menu["Debian_Applications_System"] },
	{ "Terminal Emulators", Debian_menu["Debian_Applications_Terminal_Emulators"] },
	{ "Text", Debian_menu["Debian_Applications_Text"] },
	{ "Video", Debian_menu["Debian_Applications_Video"] },
	{ "Viewers", Debian_menu["Debian_Applications_Viewers"] },
}
Debian_menu["Debian_Games_Action"] = {
	{"Star Voyager","/usr/games/starvoyager"},
}
Debian_menu["Debian_Games_Adventure"] = {
	{"Crossfire client","/usr/games/crossfire-client-gtk2"},
	{"Dungeon Crawl (tiles)","/usr/games/crawl-tiles","/usr/share/pixmaps/crawl.xpm"},
	{"gearhead", "x-terminal-emulator -e ".."/usr/games/gearhead"},
	{"gearhead2", "x-terminal-emulator -e ".."/usr/games/gearhead2"},
	{"glHack","/usr/games/glhack","/usr/share/pixmaps/glhack/glhack.xpm"},
}
Debian_menu["Debian_Games_Strategy"] = {
	{"Freeciv client (SDL version)","/usr/games/freeciv-sdl","/usr/share/pixmaps/freeciv.xpm"},
	{"Freeciv server", "x-terminal-emulator -e ".."/usr/games/freeciv-server","/usr/share/pixmaps/freeciv-server.xpm"},
	{"netrek-client-cow","/usr/games/netrek-client-cow"},
}
Debian_menu["Debian_Games_Toys"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Games"] = {
	{ "Action", Debian_menu["Debian_Games_Action"] },
	{ "Adventure", Debian_menu["Debian_Games_Adventure"] },
	{ "Strategy", Debian_menu["Debian_Games_Strategy"] },
	{ "Toys", Debian_menu["Debian_Games_Toys"] },
}
Debian_menu["Debian_Help"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"TeXdoctk","/usr/bin/texdoctk"},
	{"Xman","xman"},
	{"yelp","/usr/bin/yelp"},
}
Debian_menu["Debian_Screen_Locking"] = {
	{"Lock Screen (XScreenSaver)","/usr/bin/xscreensaver-command -lock"},
}
Debian_menu["Debian_Screen_Saving"] = {
	{"Activate ScreenSaver (Next)","/usr/bin/xscreensaver-command -next"},
	{"Activate ScreenSaver (Previous)","/usr/bin/xscreensaver-command -prev"},
	{"Activate ScreenSaver (Random)","/usr/bin/xscreensaver-command -activate"},
	{"Demo Screen Hacks","/usr/bin/xscreensaver-command -demo"},
	{"Disable XScreenSaver","/usr/bin/xscreensaver-command -exit"},
	{"Enable XScreenSaver","/usr/bin/xscreensaver"},
	{"Reinitialize XScreenSaver","/usr/bin/xscreensaver-command -restart"},
	{"ScreenSaver Preferences","/usr/bin/xscreensaver-command -prefs"},
}
Debian_menu["Debian_Screen"] = {
	{ "Locking", Debian_menu["Debian_Screen_Locking"] },
	{ "Saving", Debian_menu["Debian_Screen_Saving"] },
}
Debian_menu["Debian"] = {
	{ "Applications", Debian_menu["Debian_Applications"] },
	{ "Games", Debian_menu["Debian_Games"] },
	{ "Help", Debian_menu["Debian_Help"] },
	{ "Screen", Debian_menu["Debian_Screen"] },
}
