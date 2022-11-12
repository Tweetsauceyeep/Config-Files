"mac copy pasting
vnoremap \y y:call system("pbcopy", getreg("\""))<CR>
nnoremap \p :call setreg("\"", system("pbpaste"))<CR>p
noremap YY "+y<CR>
noremap LP "+gP<CR>
noremap XX "+x<CR>
inoremap jk <esc> 
" Basic maps
inoremap jk <esc> 
let mapleader = " " "leader is space bar
map <leader>p :Prettier<CR> 
" vim window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

