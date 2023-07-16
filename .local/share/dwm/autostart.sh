#!/bin/sh

## test for an existing bus daemon, just to be safe
# if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	## if not found, launch a new one
#        eval `dbus-launch --sh-syntax`
#        echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
#        export $DBUS_SESSION_BUS_ADDRESS 
# fi

mixer vol 80:80 &
mixer mic 0:0 &
# sys-create-env-vars &
setxkbmap fr &
xinput --disable 10 &

if [ -z $(pgrep slstatus) ]; then
	slstatus &
else
	true
fi

if [ -z $(pgrep picom) ]; then
	picom &
else
	true
fi

if [ -z $(pgrep xautolock) ]; then
	xautolock -corners 0-00 -cornersize 30 -time 30 -locker slock &
else
	true
fi

if [ -z $(pgrep redshift) ]; then
	redshift -l 48.49:2.3 -t 5500:3500 &
else
	true
fi

if [ -z $(pgrep clipmenud) ]; then
	clipmenud &
else
	true
fi
