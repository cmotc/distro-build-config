<<<<<<< HEAD
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

Eventually, this will(hopefully) also be an interactive live-build tutorial 
which will output it's own documentation, because that's also something I'm
idealistic enough to also think is cool and that's  my thing right now. Hence
the files all named step#-*_*.sh . Right now they aren't that important, the
whole tree is in place, but if one wanted to re-generate or modify the tree,
that would be one way. To build, from the same folder where this README.md file
is contained, run

        sudo lb build

Oh also they're wrong. It's just something I noticed about a lack of overlap
between Markdown and shell scripts that I thought was cool. Might not work at
all. But if I can reliably approximate a multiline comment in a shell script by
doing this

        : '
        This is a test comment
        Author foo bar
        Released under GNU
        '
[source](http://www.cyberciti.biz/faq/bash-comment-out-multiple-line-code/)
then I can enclose it in 

        echo "" | tee -a index.md

then do headers in markdown with the # <\-\- version of the header syntax and 
indented every line of code by 8 spaces then I would have a markdown document
which had a couple of weird but minimally intrusive sequences of characters in it
that pretty much documented the file. Which meant that if I did 

        markdown index.md > index.html

I'd come up with a section of formatted HTML which pretty much explained what
just happened. Additionally, if I did it right, if you did

        rebuild-all.sh > procedure.md

or something like that, then

        markdown procedure.md > procedure.html

I'd have an HTML section that would basically explained the procedure used to
generate it. Which I thought was neat. Figured this would be a good way to try
it out. Plus, doing these things in painstaking detail helps me figure them out.
So, you know, hence the lack of auto scripts for now.

To anyone who stumbles across this and hopes to use it or some of the
interesting software suggested therein, and I do encourage you to do so, please
understand that I'm only human and I'm sorry if I've introduced some sort of 
error. If I did I did so unknowingly and without malice. On a similar note, 
please also understand that much of this software is still in very active 
development and is subject to fairly rapid change. Usually, everything works and
you will hardly notice the updates, so much so that they're barely worth 
mentioning and these are smart folks, but hey you should know.
=======

        .....                                                ..
     .H8888888h.  ~-.                                  . uW8"
     888888888888x  `>        u.      ..    .     :    `t888
    X~     `?888888hx~  ...ue888b   .888: x888  x888.   8888   .
    '      x8.^"*88*"   888R Y888r ~`8888~'888X`?888f`  9888.z88N
     `-:- X8888x        888R I888>   X888  888X '888>   9888  888E
          488888>       888R I888>   X888  888X '888>   9888  888E
        .. `"88*        888R I888>   X888  888X '888>   9888  888E
      x88888nX"      . u8888cJ888    X888  888X '888>   9888  888E
     !"*8888888n..  :   "*888*P"    "*88%""*88" '888!` .8888  888"
    '    "*88888888*      'Y"         `~    "    `"`    `%888*%"
            ^"***"`                                        "`

*A minimalistic commandline tool to manage encrypted volumes* aka **The Crypto Undertaker**

Latest stable version: **1.5.3**

Updates on website: http://dyne.org/software/tomb

Get the stable .tar.gz signed release for production use!
Download it from https://files.dyne.org/tomb

# What is Tomb, the crypto undertaker?

Tomb aims to be a free and open source system for easy encryption and
backup of personal files, written in code that is easy to review and
links shared GNU/Linux components.

At present, Tomb consists of a simple shell script (Zsh) using
standard filesystem tools (GNU) and the cryptographic API of the Linux
kernel (cryptsetup and LUKS). Tomb can also produce machine parsable
output to facilitate its use inside graphical applications.

# How does it work?

For the instructions on how to get started using Tomb, see [INSTALL](INSTALL.md).

This tool can be used to dig .tomb files (LUKS volumes), forge keys
protected by a password (GnuPG symmetric encryption) and use the keys
to lock the tombs. Tombs are like single files whose contents are
inaccessible in the absence of the key they were locked with and its
password.

Once open, the tombs are just like normal folders and can contain
different files, plus they offer advanced functionalities like bind
and execution hooks and fast search, or they can be slammed close even
if busy. Keys can be stored on separate media like USB sticks, NFC, or
bluetooth devices to make the transport of data safer: one always
needs both the tomb and the key, plus its password, to access it.

The tomb script takes care of several details to improve the security
of tombs in everyday usage: adopting PIN entry for passwords,
facilitating the storage of backup keys using image steganography,
listing open tombs and selectively closing them, warning the user
about their size and last time they were used, etc.

# How secure is this?

Death is the only sure thing in life. That said, Tomb is a pretty
secure tool especially because it is kept minimal, its source is always
open, and its code is easy to review with a bit of shell script
knowledge.

All encryption tools being used in Tomb are included as default in
many GNU/Linux operating systems and therefore are regularly peer
reviewed: we don't add anything else to them really, just a layer of
usability.

The code of Tomb can be read in a literate programming style on
http://tomb.dyne.org/literate

# Stage of development

Tomb is an evolution of the 'mknest' tool developed for the dyne:bolic
GNU/Linux distribution, which is used by its 'nesting' mechanism to
encrypt the Home directory of users, a system implemented already in
2001. Since then, the same shell routines kept being maintained and in
2007, they were adapted to work on various other GNU/Linux distributions.

As of today, Tomb is a very stable tool also used in mission critical
situations by a number of activists in dangerous zones. It has been
reviewed by forensics analysts and it can be considered to be safe for
military grade use where the integrity of information stored depends on 
the user's behaviour and the strength of a standard AES-256
(XTS plain) encryption algorithm.

# Use stable releases in production

Anyone planning to use Tomb to store and access secrets should not use
the latest development version in Git, but use instead the .tar.gz
release on https://files.dyne.org/tomb . The stable version will
always ensure backward compatibility with older tombs: we make sure it
creates sane tombs and keys by running various tests before releasing
it. The development version in Git might introduce sudden bugs and is
not guaranteed to produce backward- or forward-compatible tombs and keys.
Only developers and testers should use the Git version to report bugs,
test new features, and develop patches.

So be warned: do not use the latest Git version in production
environments, but use a stable release versioned and packed as
tarball on https://files.dyne.org/tomb

# How can you help

Donations are always welcome, see https://www.dyne.org/donate

Translations are also needed: they can be contributed via this website
https://poeditor.com/join/project?hash=33bdefea2e46b26f512a0caae55fbbb5
or simply sending the .po file. Start from `extras/po/tomb.pot`.

The code is pretty short and readable: start looking around and the
materials found in `doc/` which are good pointers at security measures
to be further implemented.

For the bleeding edge visit https://github.com/dyne/Tomb

Tomb's developers can be contacted using the issues on GitHub or over
IRC on https://irc.dyne.org channel **#dyne**

Some enthusiastic ideas are in the [TODO](doc/TODO.org) file.

Information on developers involved is found in the [AUTHORS](AUTHORS.md) file.
>>>>>>> a7e1635efeda117f88dbaddca2631f420d417579
