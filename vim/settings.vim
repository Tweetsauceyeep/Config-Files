
" ======================== basic settings ==============================

"Always show current position
"set autochdir changes dr to whatever current file lives

set lazyredraw             " Only redraw when necessary.
set backspace=indent,eol,start
fixdel
" basics
set dictionary+=/usr/share/dict/words
set noshowmode
set wildmenu
set ignorecase smartcase
set encoding=utf-8
set noswapfile
set nobackup
set nowritebackup
set updatetime=50
set signcolumn=number
set number relativenumber
set nowrap
" searching related
set showmatch
set incsearch nohlsearch
set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits
" tabbing
set shiftwidth=2
set tabstop=2 softtabstop=2
set expandtab
let &t_EI = "\<Esc>[2 q"
let &t_SR = "\<Esc>[3 q"
let &t_SI = "\<Esc>[6 q"
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
" centers screen when entering insert mode
"
augroup test
  autocmd!
  autocmd InsertEnter * norm zz
augroup end

