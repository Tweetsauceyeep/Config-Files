let mapleader = " " 

" YUP from here: https://stackoverflow.com/questions/16082991/vim-switching-between-files-rapidly-using-vanilla-vim-no-plugins/16084326#16084326
nnoremap <leader>b :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *
nnoremap <leader>t :tabfind *



nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

inoremap jk <esc> 
inoremap kj <esc> 
nnoremap <C-m> <C-y>
map <C-w>h ;wincmd h<CR>
map <C-w>j ;wincmd j<CR>
map <C-w>k ;wincmd k<CR>
map <C-w>l ;wincmd l<CR>
nmap <silent> fk ;ter<CR>
map <leader>p ;Prettier<CR> 
map <leader>n ;VimtexCompile<CR> 
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

" ============================================
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



