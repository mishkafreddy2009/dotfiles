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

function vim --wraps nvim --description 'alias vim=nvim'
	if count $argv > /dev/null
		nvim $argv
	else
		nvim $(fd . | fzy)
	end
end
abbr off "doas shutdown -h now"
abbr duh "du -hs * | sort -h"
abbr xbs "xbacklight -set"
abbr webcam "mpv av://v4l2:/dev/video0 --profile=low-latency --untimed"

abbr mci "doas make clean install"

function fish_user_key_bindings
	bind \ec 'cd $(fd -t d . | fzy); commandline -f repaint'
end

starship init fish | source
