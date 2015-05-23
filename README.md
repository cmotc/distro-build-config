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