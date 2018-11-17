[[ -f ~/.bashrc]] && . ~/.bashrc

export EDITOR="vim"
export BROWSER="firefox"
export TERMINAL="urxvt"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi