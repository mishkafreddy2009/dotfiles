xrdb ~/.Xresources
setxkbmap -option ctrl:nocaps
xbacklight -set 90
redshift -O 5000
xset r rate 200 50
unclutter &
keynav &
slstatus &
export _JAVA_AWT_WM_NONREPARENTING=1
exec dwm
