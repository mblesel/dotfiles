#!/bin/sh

# General profile file

export PATH="/home/michael/.scripts:$PATH"
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="okular"

[ -f ~/.bashrc ] && source ~/.bashrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi
