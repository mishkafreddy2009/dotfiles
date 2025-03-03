#!/bin/sh
# exec >/tmp/startx$$.log 2>&1
export _JAVA_AWT_WM_NONREPARENTING=1
setxkbmap -model thinkpad -layout us,ru -option caps:none,grp:win_space_toggle
xset m 5 1
xset r rate 200 50
xss-lock -- /usr/local/bin/slock &
[ -f ~/.Xresources] && xrdb -merge ~/.Xresources
[ -d ~/bin ] && ~/bin/lsr
[ -d ~/.logins] && ffmpeg -f v4l2 -i /dev/video0 -frames:v 30 ~/.logins/$(date '+%Y-%m-%d-%H%M%S').png &
redshift -O 5500
slstatus &
exec /usr/local/bin/dwm
