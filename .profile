export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="okular"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
