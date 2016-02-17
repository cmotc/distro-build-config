# distro-live-config
A distro for Developers, Sysadmins, Power users and Hackers interested in
Privacy, Peer-to-Peer technology, and Sustainability.  

**First, more Obvious WARNING:** I'm just a guy. I do this as a hobby. I'm not
even employed as a computing professional. I'm pretty poor. I read. Free
Documentation is also usually free of cost. So I read alot of manuals. Also
secondhand textbooks from GoodWill. And Netflix, one of the only Non-Free
services I use without trying very hard to produce an alternative for myself,
only has so much so I fire up YouTube in a uzbl script which basically lets me
treat it like a search engine for youtube-dl and watch videos from hacker cons.
My point is that it's pretty audacious for me to try and put together a distro
that addresses some set of security concerns. I study alot and that is literally
it. I get profiled by incompetent department store security personnel and work
a recycler for not much money. PLEASE don't get yourself killed doing something
stupid with my configuration. Read it instead, and submit a pull request or
[email me](cmotc@openmailbox.org) if I screwed up and I'll fix it if it's me, or
pass it upstream if it's an upstream package. I've borrowed alot of work from
projects made by people who know better than me, probably, and I don't think
I've done anything that will break that work. But I could very easily be wrong.
That's the trouble with having no one to check your work yet. Note to self: Get
on the Mempo ML.  

In summary, if you're a power user who's prepared to take responsibility for
his or her own configuration, then you might find this system useful as a basis
for it. If you want to experiment with privacy technologies and don't have life,
limb, or freedom threatening privacy concerns, then it may be good enough for
you too. But if you have serious concerns and cannot otherwise evaluate your
security concerns, then you should probably use [TAILS](https://tails.boum.org)
or another more tried-and-true solution.

**WARNING:** If you install the system in it's current configuration, your user
name will be exposed on the lightdm-gtk-greeter login screen. This is one less
thing an attacker with local access who cannot compromise you with a keylogger
needs to guess. If you choose to install the system to your hard drive and use
it day-to-day, be sure to encrypt your hard disk and change.

        greeter-hide-users=false
		
into:

		greeter-hide-users=true
		
On the other hand, if you use the Live configuration then you are at least no
better or worse off for the configuration, since all the live configurations
use the same name by design. This may offer greater resistance to certain kinds
of analysis. I don't think it's a good idea to change the name on the live
configuration itself, although an argument might be made for the value of a
cascade of configurations, so maybe, just maybe, and keep in mind all I do is
read alot so who am I? Nobody that's who, but maybe releasing your custom live
configuration only *temporarily* narrows your anonymity set(and that's kind of
an overblown way of saying it, an attacker still still has to find someplace
where you leak this information from a channel you think is secure and then do
something with it.)

So right now, 2 things to think about. *Do you want your username displayed on*
*the greeter screen?* Probably not. Maybe though. They would have to decrypt the
disk, whatever TPM or coreboot situation you may have worked out, and anything
else that happens before the greeter might be enough for you. Also, *setting*
*theusername breaks the amnesic property of the system and gives a*
*characteristic that can be used to track it across some types of sessions if*
*the user is already compromised or leaks information from a session.* I've
attempted to partially mitigate this through the use of multiple Tor circuits
for different types of apps and using End-to-End encryption wherever available
when on the clearnet, but this is imperfect and a *MUCH BETTER WAY* if you
intend to use terminal tools over Tor is to separate your circuits by contextual
identity (Any particular account getting a different Tor circuit would be an OK
way to start) and the best way is to restart, boot into the LiveCD, and only use
one Tor circuit for one thing then restart every time you change tasks. It's a
spectrum.

**Current Project:** Switch from the default systemd init system in Debian
Jessie to a more Gentoo-like init system using OpenRC instead of SysV-RC(thus
keeping the only useful parts of systemd) and replacing other tightly integrated
systemd components with their modular equivalents. Right now the build will set
up SysVInit with SysV-RC, then replace SysV-RC with OpenRC. There remain a
handful of issues with that process but the system is usable. Now I've got a
successful build of vdev to use, not sure what to do about dbus, but Gentoo is
obviously the pace to look there.

**Current Project:** Create an installable Allwinner A33 port with only Free
Software that works on Q8 tablets. The trickiest part is building it with the
Lima driver for the Mali GPU and the OpenFWWF for the brcmhd wireless chip, and
frankly the systemd thing is probably going to be a bit of a quagmire. Maybe not
though, I mean I'm doing the SysV/OpenRC thing now before I get in too deep so
who knows?

I sometimes arbitrarily and without regard for the remaining problems really
like anything and everything that aids in the decentralization of the internet
and especially the functions usually carried out on social networks. To that end
I plan to include uTox for instant messaging, Twisterd for microblogging, and
and i2p for networking. I think that the ability to have a totally private and
anonymous dialog should be easily available to everyone, and that it is
wierd and creepy that I have to rely on a service provider to contact my
friends and I think you should have a choice how much information you convey and
peer-to-peer technology seems to make that a bit more realistic. It also
includes some mesh-netwoking utilities and some security testing tools, 
eventually they(The security tools) will focus on testing distributed 
applications and mesh networks.  

Some other packages that are likely to be included in the future are the Syndie
distributed Forum/Blogging engine, the BitMessage e-mail replacement protocol,
and a to-be-determined Bitcoin wallet. Gittorrent will also be in here once
I figure out enough about how to make it work.  

To anyone who stumbles across this and hopes to use it or some of the
interesting software suggested therein, and I do encourage you to do so, please
understand that I'm only human and I'm sorry if I've introduced some sort of 
error. If I did I did so unknowingly and without malice. On a similar note, 
please also understand that much of this software is still in very active 
development and is subject to fairly rapid change. Usually, everything works and
you will hardly notice the updates, so much so that they're barely worth 
mentioning and these are smart folks, but hey you should know.  

CHECKLIST
---------
This is fun. I get to be really picky about what I want.  

   * **Do less** Battery life is rough. And it's an older laptop these days.
Still sweet, but, you need to be really in charge of it to keep up with these
newfangled things. And all that background crap in Gnome wasn't doing you any
good. So you're going with awesome, and you're trying to do more with less
pretty successfully because awesome is indeed, pretty awesome. And man it's nice
to really know where your computer starts these background services up. And it's
paid off. Battery life is better. Things are running faster. You're managing
less software, which means a smaller footprint. You haven't made a good way to
manage your keys without having to repeatedly retype passwords yet, but hey. At
least it's asking you to do it. But there is a balance to be struck for you and
you can find it and write something about how you found it that helps someone
else find it. Status unknown. Right now the running system is not really in its
pure state, but it's doing pretty well for as bloated as it is. I'm going to
clean-slate it soon and we'll see.
   * **Decentralize all the things!** Decentralizing stuff has come along
nicely, but right now some of my custom versions of packages don't work. It'll
just be a little while before I've got those back up. Right now, everything that
is remotely worthwhile to do on facebook is now possible to do with
decentralized techologies capable of end to end encryption, and that is
overwhelmingly how I would prefer to do those things. Status, mostly done,
momentarily broke. Oh also finish updating ratox.
   * **Make it Self-Hosting** Technically this is a pretty easy property to
have, since it's running mostly standard Debian packages and portable scripts,
but I want to be able to make it easy for every package in the distro to be
forked and uploaded to a new repository, then for that repository to be added to
a fork of the live-build config, then rebuild the live-build in a standard,
self-explanatory way. The workspace is located in the $HOME/Projects directory,
and shortcuts to each part of the system is added to rc.lua, but some setup
scripts would be in order next.
   * **Make it nice to use!** I really liked some of Gnome3's features, and I
really liked tiling window managers. So I made some rc.lua and other tweaks
which reproduced the features I liked on top of awesome and approximated some
aspects of it's interface. Now I'm integrating it with the user's personal
environment and creating some management tools for it. There's a drop-down
network manager interface, OS X style quick launch bar and Gnome3 style hot
corner, and a Battery Monitor. Soon there will be an ssh-agent and gpg-agent
management interface, all for awesomewm. A few shell scripts accompany them.
Oh and a pretty cool looking conkyrc with a HUD-like pop-up interface.
Throughout it I'm favoring dialog and curses based interfaces from the shell.
Status? Pretty OK so far. Work in progress.
   * **Make it easy to customize the behavior!** Where possible, use shell
scripts and be concise. Don't set too many settings right off the bat, but make
it easy and clear where it's safe to add some profile-wide variable or alias.
Comment the files where those things get set when they aren't self-explanatory.
Partly for your own benefit, you can't remember everything. Need to do that last
part with the comments and the readmes and whatnot. Switch the fuck back to
SysVInit.
   * **Harden it, including in some novel ways!** Take that customizable
behavior and the flexibility of the shell, combined with existing tools and
configuration options and figure out how to turn the security up. Like disabling
USB HID's and firewire when the screensaver engages to prevent attacks on the
computer when the screen is locked. Give it a panic button that shuts it down
immediately. Give it the ability to use encrypted configuration files that
expose the minimum data. Give it some kind of "silent running" mode where it
blocks all the stuff from item 1. Progress, who knows?
   * **Find ways to contribute software which can be used elsewhere!** Some of
it can be used elsewhere. But who knows. I'm just a prolific hobbyist. I like
tinkering with this stuff. Old computers are everywhere, this setup lends itself
to them. Like the crunchbang family, but with my setup on it. It'd be pretty easy
to make it your setup instead, which is also kind of the idea. I want it to be
easy to for somebody to make their own sort of custom ecosystem and maybe share
it with other people or something, I don't know really. But it's fun.
   * **Libre Entertainment** Find Free-As-In-Freedom, Public Domain, or 
otherwise consumer-controlled entertainment and bundle resources for retrieving
it in the distribution. Magnet links in files mostly so they can be torrented
with rtorrent or streamed from torrent sources with tribler. In the case of
video games, package them if possible and patch them where required. Eventually
GemRB is something I want here(I know it doesn't have free resources. Somebody
should create some. I'm not a pixel artist or my game would be playable already.
But hey, maybe someday. Wouldn't be the first time something clicked after a
long time.) Status barely started. Only the hosts file arguably.
   * **Privacy Conscious Default Libre Browser** Browsers are complicated and I
don't reccommend anyone use my setups unless they really want to, but in seeking
a lightweight, reasonably usable Tor Browser configuration I've stumbled across
xombrero and configured it for use with Tor(And i2p, which is more exciting and
frankly, the one I'm more comfortable with in this relatively unique
configuration.). **This will, however, probably make your browser more unique**
**and fingerprintable.** Your user agent will be changed to match the Tor 
Browser Bundle, but this is almost certainly inadequate to prevent browser 
fingerprinting attacks on its own, so scripting will be totally disabled in the 
default configuration. Your configuration will still probably be more unique 
than the Tor Browser Bundle, and you should be careful when using any kind of 
secure service. Still, I think it's a pretty nice and interesting config file.
There's also the ability to install the torbrowser-launcher application from
the backports repository.
  * **Held for now project** Making a Debian package which installs and
configures gittorrent system-wide and configures the init system for
gittorrentd. Right now it's installed with a hook that activates the npm
package. I might just have a post-install script invoke the npm command to
install gittorrent in a package. It's a shitty way to do it but I hate
Javascript so much.

Custom Packages
---------------
A number of custom packages are used to configure this system.

###Svirfneblin
I've named my awesomewm configuration, which is a combination of rc.lua and
widgets/configurations in separate folders, svirfneblin. I also made a wrapper
around awesomewm called svirfneblin, and a lightDM session. I might switch that
to just being a cli login and Xsession, which would be faster but I don't quite
know how to do that yet. But you can also use configuration files in 
$HOME/.config/svirfneblin/ or /etc/xdg/svirfneblin/ to hold configuration files
which we in fact do. It will fall back to awesomewm with the normal config
directories if any part of that fails. The goal is to be Gnome3-like where it's
nice but avoid all the dumb stuff about Gnome3 that bothered you and have the
customizability of tiling. Also I can't imagine a civilized society that 
survives long if javascript is integrated into it's desktop environment.

Svirfneblin isn't a Gnome3 clone anymore. It's an AwesomeWM configuration which
makes one or two things available that are inspired by Gnome3 and approximates
a desktop environment to achieve the goals of this custom distro.

###vdev, dbus, and OpenRC partially ported from Gentoo and Devuan

		vdev	upstream		=	https://git.devuan.org/pkgs-utopia-substitution/vdev
				fireaxe-current	=	https://www.github.com/cmotc/vdev
				
		dbus	upstream		=	https://dbus.freedesktop.org/
				debian wheezy	=	https://packages.debian.org/wheezy/dbus
				fireaxe-current	=	https://www.github.com/cmotc/dbus(Unmodified so far, might just switch to devuan depending how things go)
				
		OpenRC	upstream		=	http://www.gentoo.org/proj/en/base/openrc/
				debian sid		=	https://packages.debian.org/stretch/openrc
				fireaxe-current	=	https://www.github.com/cmotc/OpenRC(Unmodified so far.)
				
###proxychains-ng. Because Fuck Cloudflare.

		proxychains-ng	upstream		=	https://github.com/rofl0r/proxychains-ng
						fireaxe-current =	https://github.com/cmotc/proxychains-ng
						
###GRSecurity Hardened Linux kernel with x11 Modifications inspired by Mempo

		Currently a WIP.

Other Distro's of Interest
--------------------------
Besides the obvious, there are other security, activism, and systemd-free, and
Free Software oriented GNU/Linux distributions. Sometimes, this is just an
emergent property of them having decent documentation.

###Privacy Focused
  * [TAILS](https://tails.boum.org) (Recommended)(Activist)(Live)
  * [Freepto](https://www.freepto.mx) (Activist)(Versatile)(Live)
  * [Ipredia](https://www.ipredia.org) (Recommended)(Activist)
  * [Mempo](https://wiki.debian.org/Mempo) (Research)(Versatile)(Power-User)
  
###Resisting or likely to resist systemd and contributing replacements
  * [Devuan](https://devuan.org) (Recommended)(Activist)(Research)(Versatile)
  * [GNewSense](https://gnewsense.org) (Recommended)(Activist)(Stable)(Versatile)
  * [Gentoo Linux](https://www.gentoo.org) (Recomended)(Versatile)(Power-User)

###Security Focused
  * [OpenBSD](https://openbsd.org) (Recomended)(Versatile)(Power-User)
  * [Alpine Linux](http://alpinelinux.org) (Recomended)(Versatile)(Power-User)

###Network Observation Focused
  * [Kali Linux](https://kali.org) (Versatile)(Power-User)
  * [ParrotOS](https://parrotsec.org) (Recomended)(Versatile)(Power-User)
  * [Pentoo Linux](https://www.pentoo.ch) (Recomended)(Versatile)(Power-User)

###Has excellent documentation
  * [Arch Linux](https://www.archlinux.org) (Versatile)(Power-User)
  