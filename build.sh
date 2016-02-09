#! /bin/sh

sudo lb clean
cd ../
cp -R fireaxe fireaxe-build
cd fireaxe-build
sudo lb config
sudo lb build
