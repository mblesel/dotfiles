execute pathogen#infect()
set nocompatible

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
      set t_Co=256
  endif

filetype plugin indent on
syntax on
syntax enable " Turn on syntax highlighting  

"colorschme
set background=dark
colorscheme PaperColor

let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

let g:badwolf_darkgutter = 1


let g:quantum_italics=1

highlight LineNr ctermfg=grey

set hidden " Leave hidden buffers open  
set history=100 "by default Vim saves your last 8 commands.  We can handle more  
set number  	"Linenumbers

"No Swapfiles 
set noswapfile
set nobackup
set nowritebackup

" We want to replace tabs with spaces and have 4 space width indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Start scrolling when we're getting close to margins
set scrolloff=10
set sidescrolloff=15
set sidescroll=1

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set ff=unix
set nobomb

inoremap jk <ESC>
let mapleader=","

"YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap ; :CtrlPBuffer<CR>

"vim-airline
set laststatus=2

"searching
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <leader>q :nohlsearch<CR>

