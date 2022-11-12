set nocompatible
" removes insert word  below status bar
set noshowmode
" Colors
"set termguicolors
set background=dark
"mac copy pasting
vnoremap \y y:call system("pbcopy", getreg("\""))<CR>
nnoremap \p :call setreg("\"", system("pbpaste"))<CR>p
noremap YY "+y<CR>
noremap LP "+gP<CR>
noremap XX "+x<CR>

" Auto Commands
" centers screen when entering insert mode
autocmd InsertEnter * norm zz

" ======================== main settings ============================== 
set ignorecase
set smartcase
set wildmode=longest,list,full
set encoding=utf-8
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
let mapleader = " " "leader is space bar
set number
set rnu
set nowrap
set showmatch
set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search
set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits
set nowrap
set backspace=indent,eol,start  " more powerful backspacing
filetype plugin indent on
filetype off
let &t_EI = "\<Esc>[2 q"
let &t_SR = "\<Esc>[3 q"
let &t_SI = "\<Esc>[6 q"
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
set shiftwidth=2
set tabstop=2
set expandtab

" Mappings ==========================================
inoremap jk <esc> 
inoremap kj <esc> 
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nmap <silent> fk :ter<CR>
map <leader>p :Prettier<CR> 


"=================== Standard And Plugin Bindings =============
nnoremap <leader>t :!touch<Space>
nnoremap <leader>d :!mkdir<Space>
nnoremap <leader>P :pwd<enter>
let g:UltiSnipsExpandTrigger="<c-m>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ============================================
" Stuff for like doing things that plugins do without plugins
" Auto-insert closing parenthesis/brace/quotes
inoremap ( ()<C-G>U<Left>
inoremap { {}<C-G>U<Left>
inoremap [ []<C-G>U<Left>
inoremap ' ''<C-G>U<Left>
inoremap " ""<C-G>U<Left>
" Expand opening-brace followed by ENTER to a block and place cursor inside
inoremap {<cr> {<cr>}<Esc>O
inoremap (<cr> (<cr>)<Esc>O
inoremap [<cr> [<cr>]<Esc>O
" Skip over closing parenthesis/brace/bracket
inoremap <expr> ) getline('.')[col('.') - 1] == ")" ? "\<Right>" : ")"
inoremap <expr> } getline('.')[col('.') - 1] == "}" ? "\<Right>" : "}"
inoremap <expr> ] getline('.')[col('.') - 1] == "]" ? "\<Right>" : "]"

" stuff from lukesmith comfy ide vim video
" This uses <++> as markers
inoremap <C-p> <Esc>/<++><Enter>"_c4l
autocmd FileType js,html inoremap ;d <div></div><Space><++><Esc>FdT>i

"========== PLUGINS ============


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release','for': ['javascript', 'html', 'json', 'python']}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x'
  \ }
Plug 'lervag/vimtex', {'for': 'latex'}
Plug 'sirver/ultisnips', {'for': ['javascript', 'latex', 'html', 'python']}
call plug#end()


" =================== FZF ================
" Tell FZF to use RG - so we can skip .gitignore files even if not using
" :GitFiles search
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden -g "!{node_modules,.git}" '
nmap <silent> <leader>j :Files<CR>
nmap <silent> <leader>f :Rg<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
"With the above, every time we invoke Rg, FZF + ripgrep will not consider filename as a match in Vim.
let g:fzf_layout = { 'down': '10' }

"========= COC ==============

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-html',
  \]


function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
