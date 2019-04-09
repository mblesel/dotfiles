# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="okular"

# ls aliases
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'

# general shortcuts
alias open='xdg-open'

# cp aliases for template files
alias cptexa='cp /home/michael/Documents/templates/latex/artcl/artcl.tex'

PS1='[\u@\h \W]\$ '

# load spack
source ~/Projects/spack/share/spack/setup-env.sh

#utility scripts
export PATH="/home/michael/.scripts:$PATH"

#llvm debug
export PATH="/home/michael/Projects/llvm_install/bin:$PATH"
export LD_LIBRARY_PATH="/home/michael/Projects/llvm_install/lib:$LD_LIBRARY_PATH"

#llvm-lit
export PATH="/home/michael/Projects/lit:$PATH"

#CATO
export DAS_TOOL_ROOT="/home/michael/Projects/LLVM-Translation-Tool"
