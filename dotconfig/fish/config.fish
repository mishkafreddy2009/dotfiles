set fish_greeting ""

set -gx EDITOR "nvim"
set -gx BROWSER chromium

set -gx GOPATH "$HOME/.go"
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH "$PATH:$(go env GOPATH)/bin"
set -gx PATH $PATH ~/.npm-global/bin

set -gx LIBVA_DRIVER_NAME "i965"

alias ls "lsd --group-directories-first --icon never"
alias la "lsd -A --group-directories-first --icon never"
alias ll "lsd -l --group-directories-first --icon never"
alias lla "lsd -lA --group-directories-first --icon never"
alias v "nvim"
abbr off "doas shutdown -h now"
abbr duh "du -hs * | sort -h"
abbr xbs "xbacklight -set"
abbr webcam "mpv av://v4l2:/dev/video0 --profile=low-latency --untimed"

abbr mci "doas make clean install"

function fish_user_key_bindings
	bind \ec 'cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf --layout reverse); commandline -f repaint'
end

starship init fish | source
