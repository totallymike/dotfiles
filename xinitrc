#!/usr/bin/env bash

# Set default cursor (xmonad doesn't do it for you)
xsetroot -cursor_name left_ptr

# URXVT daemon
urxvtd -q -f -o

xcompmgr -c -fF -D 5 &
# Import xresources
xrdb -merge $HOME/.Xdefaults

exec $HOME/.cabal/bin/xmonad
