execute pathogen#infect()
set nocompatible

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal" || "$TERM=st-256color"
      set t_Co=256
  endif

let fortran_have_tabs=1
filetype plugin indent on
syntax on

"
"colorschme stuff
"
colorscheme PaperColor
set background=dark

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

"
"general settings
"
highlight LineNr ctermfg=grey

set hidden " Leave hidden buffers open  
set history=100 "by default Vim saves your last 8 commands.  We can handle more  
set number relativenumber 	"Linenumbers
set nu rnu

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

"file encoding
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set ff=unix
set nobomb

"searching
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <leader>q :nohlsearch<CR>


"
"key mappings
"
let mapleader=","

" clipboard copy/paste
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-i> "+P

"vim-airline
set laststatus=2

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap ; :CtrlPBuffer<CR>
