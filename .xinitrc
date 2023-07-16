#!/bin/sh

export LANG=fr_FR.UTF-8
setxkbmap fr
xrdb $HOME/.Xresources
xrandr -s 1920x1080i
wal -R
exec dwm
# exec enlightenment_start
# exec icewm
# exec fvwm3
# exec fvwm
# exec wmaker
# exec ck-launch-session mate-session
# exec cinnamon-session
# exec ck-launch-session startplasma-x11
# . /usr/local/etc/xdg/xfce4/xinitrc

