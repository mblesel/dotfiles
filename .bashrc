# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
PS1='[\u@\h \W]\$ '

#utility scripts
export PATH="/home/michael/.scripts:$PATH"

#llvm debug
export PATH="/home/michael/Projects/llvm_install/bin:$PATH"
export LD_LIBRARY_PATH="/home/michael/Projects/llvm_install/lib:$LD_LIBRARY_PATH"

#CATO
export DAS_TOOL_ROOT="/home/michael/Projects/LLVM-Translation-Tool"
