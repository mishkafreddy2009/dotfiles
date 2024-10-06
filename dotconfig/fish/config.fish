set fish_greeting ""

alias ls "lsd --group-directories-first --icon never"
alias la "lsd -A --group-directories-first --icon never"
alias ll "lsd -l --group-directories-first --icon never"
alias lla "lsd -lA --group-directories-first --icon never"
alias off "sudo shutdown -h now"
alias n "nnn -CHde"
alias du "du -hs * | sort -h"
alias df "df -h"
alias xbs "xbacklight -set "
alias webcam "mpv av://v4l2:/dev/video0 --profile=low-latency --untimed"
alias v "nvim "

alias ga "git add "
alias gc "git commit -m "

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH "$PATH:$(go env GOPATH)/bin"
set -gx PATH $PATH ~/.npm-global/bin
set -gx LIBVA_DRIVER_NAME "i965"

starship init fish | source
