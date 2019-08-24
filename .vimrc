execute pathogen#infect()
set nocompatible

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal" || "$TERM=st-256color"
      set t_Co=256
  endif

let fortran_have_tabs=1

filetype plugin indent on
syntax on

let mapleader=","

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
set nu rnu "Relative linenumbers

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

set updatetime=500

"
" General key mappings
"

" clipboard copy/paste
vnoremap <C-c> "+y
map <C-b> "+p

" Clear search highlighting
nmap <leader>q :nohlsearch<CR>

" Buffer stuff
"Open new empty buffer
nmap <leader>t :enew<CR> 
" Move between buffers
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
"nnoremap <Tab> :bnext<CR>
"nnoremap <S-Tab> :bnext<CR>


" Split stuff
" Move between splits
nnoremap <C-H> <C-W><C-H> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
" Change default placement of new created splits
set splitbelow
set splitright


"
" Plugins
"

"vim-airline
set laststatus=2 "Always show status line
let g:airline#extensions#tabline#enabled = 1 "Top bar with buffer list
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#show_tabs = 0

"NERDTree
map <C-n> :NERDTreeToggle<CR>


"CtrlP
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap ; :CtrlPBuffer<CR>


"CurtineIncSw (Switch header/src file)
nnoremap <F5> :call CurtineIncSw()<CR>

"YouCompleteMe
let g:ycm_server_python_interpreter = 'python2'
let g:ycm_global_ycm_extra_conf = '/home/michael/.config/ycm/.ycm_extra_conf.py'
" GoTo definition / declaration
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>jD :YcmCompleter GoToDeclaration<CR>
