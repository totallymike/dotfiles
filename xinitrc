#!/usr/bin/env bash

# Set default cursor (xmonad doesn't do it for you)
# xsetroot -cursor_name left_ptr

# trayer --transparent true --tint 0x151515 --alpha 50 --widthtype percent --width 10 --edge top --align right --SetPartialStrut true &

# nm-applet &
# URXVT daemon
# urxvtd -q -f -o

# Import xresources
xrdb -merge $HOME/.Xdefaults

# dropbox start &

# exec $HOME/.cabal/bin/xmonad
exec awesome
