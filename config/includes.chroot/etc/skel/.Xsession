#!/bin/sh

#Stored call sequence for restarting awesome smoothly 
#with the correct rc.lua, etc
aweome_start(){
    sudo killall awesome
    awesome-wm
}

#Check if awesome exists, and start it

#Check if conky exists, and start it.
if [ $(check_conky) = '0' ];then
    compton &
    conky &
fi

