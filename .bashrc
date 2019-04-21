stty -ixon # Disabe ctrl-s and ctrl-q
HISTSIZE= HISTFILESIZE= # Infinite history

# ls aliases
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'

alias grep='grep --color=auto'

# Shortcuts
alias open='xdg-open'
alias g='grep'

# cp aliases for template files
alias cptexa='cp /home/michael/Documents/templates/latex/artcl/artcl.tex'

PS1='[\u@\h \W]\$ '

source /usr/share/doc/pkgfile/command-not-found.bash 

# load spack
source ~/Projects/spack/share/spack/setup-env.sh

#llvm debug
export PATH="/home/michael/Projects/llvm_install/bin:$PATH"
export LD_LIBRARY_PATH="/home/michael/Projects/llvm_install/lib:$LD_LIBRARY_PATH"

#llvm-lit
export PATH="/home/michael/Projects/lit:$PATH"

#CATO
export DAS_TOOL_ROOT="/home/michael/Projects/LLVM-Translation-Tool"
