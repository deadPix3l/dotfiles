feh  --bg-scale $HOME/wallpapers/1.png &
xrdb -merge ~/.config/.Xresources &

sxhkd -f 100 &
exec bspwm
