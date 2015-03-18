#! /bin/sh
echo ":'
#Live-Build Interactive Tutorial

##This first step generates a Live-Build configuration tree.
'"
#
lb config -a amd64 -b iso-hybrid -d jessie --mirror-bootstrap "https://www.mirror.cse.unsw.edu.au/debian/" --mirror-chroot "https://www.mirror.cse.unsw.edu.au/debian/" --apt-options "--force-yes --assume-yes"

