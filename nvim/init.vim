" Colors and Formatting
"highlight CursorLineNr cterm=NONE ctermbg=cyan ctermfg=white gui=NONE guibg=#81A1C1 guifg=white
highlight LineNr ctermfg=white
highlight Comment cterm=italic gui=italic
set background=dark

"mac copy pasting
vnoremap \y y:call system("pbcopy", getreg("\""))<CR>
nnoremap \p :call setreg("\"", system("pbpaste"))<CR>p
noremap LP "+gP<CR>
noremap YY "+y<CR>
noremap XX "+x<CR>

" ======================== basic settings ==============================
let mapleader = " " 
set backspace=indent,eol,start
" basics
filetype plugin indent on
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

" Mappings ==========================================
inoremap jk <esc> 
inoremap kj <esc> 
map <C-w>h ;wincmd h<CR>
map <C-w>j ;wincmd j<CR>
map <C-w>k ;wincmd k<CR>
map <C-w>l ;wincmd l<CR>
nmap <silent> fk ;ter<CR>
map <leader>p ;Prettier<CR> 
"swaps ; and : This is why shit looks like ;syntax off
noremap ; :
noremap : ;
"Change directory to the dir of the current buffer
nmap <silent> <leader>cd ;cd %:p:h<cr>:pwd<cr>

nnoremap <leader>t :!touch<Space>
nnoremap <leader>d :!mkdir<Space>
nnoremap <leader>P :pwd<enter>
nnoremap <leader>S :source $MYVIMRC
nnoremap <leader>- :syntax on<CR>
nnoremap <leader>= :syntax off<CR>

"Status bar ===================================================
set laststatus=2
hi User2 ctermfg=white ctermbg=0
let g:currentmode={
       \ 'n'  : 'N ',
       \ 'v'  : 'V ',
       \ 'V'  : 'V·Line ',
       \ "\<C-V>" : 'V·Block ',
       \ 'i'  : 'I ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'C ',
       \ 't'  : 'Terminal ',
       \ 's'  : 'S',
       \}
set statusline=
set statusline+=%2*\ %{toupper(g:currentmode[mode()])}
set statusline+=%4*\ %t\ \                                

" ============================================
" Stuff for like doing things that plugins do without plugins
" Auto-insert closing parenthesis/brace/quotes
inoremap ( ()<C-G>U<left>
inoremap { {}<C-G>U<left>
inoremap [ []<C-G>U<left>
inoremap ' ''<C-G>U<left>
inoremap " ""<C-G>U<left>
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

"========== PLUGINS ============
call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x',
  \ 'for': 'javascript'
  \ }
Plug 'lervag/vimtex', {'for': 'latex'}
Plug 'sirver/ultisnips', {'for': ['javascript', 'latex', 'html', 'python']}
Plug 'vimwiki/vimwiki', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'alvan/vim-closetag', {'for': ['javascript', 'html']}
call plug#end()
syntax off
"close tag
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'
" =================== FZF ================
" Tell FZF to use RG - so we can skip .gitignore files even if not using
" :GitFiles search
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden -g "!{node_modules,.git}" '
nmap <silent> <leader>f ;Files<CR>
nmap <silent> <leader>j ;Rg<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
"With the above, every time we invoke Rg, FZF + ripgrep will not consider filename as a match in Vim.
let g:fzf_layout = { 'window' :  { 'width': 0.9, 'height': 0.6 }}

"+++++++++ VIM WIKI ++++++++++++++++++++
let g:vimwiki_list = [{'path': '~/Obsidian-Notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_list = [{'path': '!/'}]

"++++++++++++++++++ VIM MARKDOWN PREVIEW +++++++++++++++++=

nnoremap <leader>m :MarkdownPreviewToggle<CR>


