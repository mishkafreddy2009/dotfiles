set fish_greeting ""

alias ls "lsd --group-directories-first --icon never"
alias la "lsd -A --group-directories-first --icon never"
alias ll "lsd -l --group-directories-first --icon never"
alias lla "ll -A"
alias off "sudo shutdown -h now"
alias n "nnn -CHde"
alias du "du -hs * | sort -h"
alias df "df -h"
alias xbls "xbacklight -set "
alias ngp "cd ~/mind && git add . && git commit -m 'fix: minor changes' && git push"
alias webcam "mpv av://v4l2:/dev/video0 --profile=low-latency --untimed"
alias muz "mpv --no-terminal --shuffle ."

command -qv nvim

set -Ux EDITOR nvim
set -Ux PATH bin $PATH
set -Ux PATH ~/bin $PATH
set -Ux PATH ~/.local/bin $PATH
set -Ux _JAVA_AWT_WM_NONREPARENTING "1"
set -Ux DOTNET_CLI_TELEMETRY_OPTOUT "1"
set -Ux NPM_CONFIG_PREFIX "~/.npm-global"
set -Ux PATH $PATH:~/.npm-global/bin
set -Ux LIBVA_DRIVER_NAME "i965"
