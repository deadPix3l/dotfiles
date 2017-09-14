#!/bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

~/.fehbg &

# Polybar moved to i3 config.
# polybar skybar &

# exec bspwm
exec i3
