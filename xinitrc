#!/usr/bin/env bash

# Set default cursor (xmonad doesn't do it for you)
xsetroot -cursor_name left_ptr

trayer --transparent true --tint 0x151515 --alpha 50 --widthtype percent --width 10 --edge top --align right --SetPartialStrut true &

nm-applet &
# URXVT daemon
urxvtd -q -f -o

xcompmgr -c -fF -D 5 &
# Import xresources
xrdb -merge $HOME/.Xdefaults

exec $HOME/.cabal/bin/xmonad
