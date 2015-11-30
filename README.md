# distro-live-config
Backup of my laptop OS configuration as a live-build tree  

I sometimes arbitrarily and without regard for the remaining problems really
like anything and everything that aids in the decentralization of the internet
and especially the functions usually carried out on social networks. To that end
I plan to include uTox for instant messaging, Twisterd for microblogging, and
and i2p for networking. I don't actually particularly care about anonymity, but
it's wierd and creepy that I have to rely on a service provider to contact my
friends and I think you should have a choice how much information you convey and
peer-to-peer technology seems to make that a bit more realistic. It also
includes some mesh-netwoking utilities and some security testing tools, 
eventually they(The security tools) will focus on testing distributed 
applications and mesh networks.  

Some other packages that are likely to be included in the future are the Syndie
distributed Forum/Blogging engine, the BitMessage e-mail replacement protocol,
and a to-be-determined Bitcoin wallet.  

CHECKLIST
---------
This is fun. I get to be really picky about what I want.  

   * **Do less** Battery life is rough. And it's an older laptop these days. Still sweet, but, you need to be really in charge of it to keep up with these newfangled things. And all that background crap in Gnome wasn't doing you any good. So you're going with awesome, and you're trying to do more with less pretty successfully because awesome is indeed, pretty awesome. And man it's nice to really know where your computer starts these background services up. And it's paid off. Battery life is better. Things are running faster. You're managing less software, which means a smaller footprint. You haven't made a good way to manage your keys without having to repeatedly retype passwords yet, but hey. At least it's asking you to do it. But there is a balance to be struck for you and you can find it and write something about how you found it that helps someone else find it. Status unknown. Right now the running system is not really in its pure state, but it's doing pretty well for as bloated as it is. I'm going to clean-slate it soon and we'll see.
   * **Decentralize all the things!** Decentralizing stuff has come along nicely, but right now some of my custom versions of packages don't work. It'll just be a little while before I've got those back up. Right now, everything that is remotely worthwhile to do on facebook is now possible to do with decentralized techologies capable of end to end encryption, and that is overwhelmingly how I would prefer to do those things. Status, mostly done, momentarily broke. Oh also finish updating ratox.
   * **Make it nice to use!** I really liked some of Gnome3's features, and I really liked tiling window managers. So I made some rc.lua and other tweaks which reproduced the features I liked on top of awesome and approximated some aspects of it's interface. Now I'm integrating it with the user's personal environment and creating some management tools for it. There's a drop-down network manager interface, OS X style quick launch bar and Gnome3 style hot corner, and a Battery Monitor. Soon there will be an ssh-agent and gpg-agent management interface, all for awesomewm. A few shell scripts accompany them. Oh and a pretty cool looking conkyrc with a HUD-like pop-up interface. Throughout it I'm favoring dialog and curses based interfaces from the shell.
   * **Make it easy to customize the behavior!** Where possible, use shell scripts and be concise. Don't set too many settings right off the bat, but make it easy and clear where it's safe to add some profile-wide variable or alias. Comment the files where those things get set when they aren't self-explanatory. Partly for your own benefit, you can't remember everything.
   * **Harden it, including in some novel ways!** Take that customizable behavior and the flexibility of the shell, combined with existing tools and configuration options and figure out how to turn the security up. Like disabling USB HID's and firewire when the screensaver engages to prevent attacks on the computer when the screen is locked. Give it a panic button that shuts it down immediately. Give it the ability to use encrypted configuration files that expose the minimum data. Give it some kind of "silent running" mode where it blocks all the stuff from item 1.
   * **Find ways to contribute software which can be used elsewhere!** Some of it can be used elsewhere. But who knows. I'm just a prolific hobbyist. I like tinkering with this stuff. Old computers are everywhere, this setup lends itself to them. Like the crunchbang family, but with my setup on it. It'd be pretty easy to make it your setup instead, which is also kind of the idea. I want it to be easy to for somebody to make their own sort of custom ecosystem and maybe share it with other people or something, I don't know really. But it's fun.

To anyone who stumbles across this and hopes to use it or some of the
interesting software suggested therein, and I do encourage you to do so, please
understand that I'm only human and I'm sorry if I've introduced some sort of 
error. If I did I did so unknowingly and without malice. On a similar note, 
please also understand that much of this software is still in very active 
development and is subject to fairly rapid change. Usually, everything works and
you will hardly notice the updates, so much so that they're barely worth 
mentioning and these are smart folks, but hey you should know.

Svirfneblin
-----------

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
