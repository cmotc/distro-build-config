#! /bin/sh
echo ":'
##Finally building the iso image
'" 
sudo lb build
sudo chroot chroot apt-get install apt-transport-https apt-transport-tor gnupg
sudo lb build