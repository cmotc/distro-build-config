#!/bin/sh
APPCHK=$(ps aux | grep conky | grep -v "grep conky" | wc -l)
if [ "$APPCHK" = '0' ];then
    killall xcompmgr
    xcompmgr &
    conky &
fi
