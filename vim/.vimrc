filetype plugin indent on
source $HOME/.config/vim/mappings.vim
source $HOME/.config/vim/settings.vim
source $HOME/.config/vim/plugins.vim 


" ------------------- Color Settings --------------------
set background=dark
set termguicolors
colors GruberDarker
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

"set cursorline
"hi CursorLineNR cterm=bold guifg=#83a598


" ------------------- mac copy pasting -------------------
vnoremap \y y:call system("pbcopy", getreg("\""))<CR>
nnoremap \p :call setreg("\"", system("pbpaste"))<CR>
noremap LP "+gP<CR>
noremap YY "+y<CR>
noremap XX "+x<CR>

" ------------------- Status Bar -------------------

"hi User2 ctermfg=white ctermbg=blue guifg=#ffffff guibg=#689d6a
"let g:currentmode={
"      \ 'n'  : '[N]',
"      \ 'v'  : '[V]',
"      \ 'V'  : '[V·Line]',
"      \ "\<C-V>" : '[V·Block]',
"      \ 'i'  : '[I]',
"      \ 'R'  : '[R]',
"      \ 'Rv' : '[V·Replace]',
"      \ 'c'  : '[C]',
"      \ 't'  : '[Terminal]',
"      \ 's'  : '[S]',
"      \}
"set statusline=
"set statusline+=%2*\ %{toupper(g:currentmode[mode()])}\ 
"set statusline+=%4*\ %t\ \                                
"set statusline+=%4*\ \ \                                
