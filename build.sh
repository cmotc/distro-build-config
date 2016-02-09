#! /bin/sh

sudo lb clean
cd ../
sudo rm -rf fireaxe-build
cp -R fireaxe fireaxe-build
cd fireaxe-build
sudo lb config
sudo lb build
