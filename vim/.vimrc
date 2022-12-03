filetype plugin indent on
source $HOME/.config/vim/mappings.vim
source $HOME/.config/vim/plugins.vim
source $HOME/.config/vim/settings.vim

" Colors and Formatting
"highlight CursorLineNr cterm=NONE ctermbg=cyan ctermfg=white gui=NONE guibg=#81A1C1 guifg=white

"mac copy pasting
vnoremap \y y:call system("pbcopy", getreg("\""))<CR>
nnoremap \p :call setreg("\"", system("pbpaste"))<CR>
noremap LP "+gP<CR>
noremap YY "+y<CR>
noremap XX "+x<CR>

syntax on
set termguicolors
set background=dark
color gruvbox8
hi Normal guibg=NONE ctermbg=NONE

highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
"Status bar ===================================================
set laststatus=2
"hi User2 ctermfg=white ctermbg=blue guifg=#ffffff guibg=#689d6a
let g:currentmode={
       \ 'n'  : '[N]',
       \ 'v'  : '[V]',
       \ 'V'  : '[V·Line]',
       \ "\<C-V>" : '[V·Block]',
       \ 'i'  : '[I]',
       \ 'R'  : '[R]',
       \ 'Rv' : '[V·Replace]',
       \ 'c'  : '[C]',
       \ 't'  : '[Terminal]',
       \ 's'  : '[S]',
       \}
"set statusline=
"set statusline+=%2*\ %{toupper(g:currentmode[mode()])}
"set statusline+=%4*\ %t\ \                                
"set statusline+=%4*\ \ \                                

" Statusline with highlight groups (requires Powerline font, using Solarized theme)
set statusline=
set statusline+=\ %(%{toupper(g:currentmode[mode()])}\ \ %)
set statusline+=%< " Truncate line here
set statusline+=%f\  " File path, as typed or relative to current directory
set statusline+=%{&modified?'+\ ':''}
set statusline+=%{&readonly?'\ ':''}
set statusline+=%1*\  " Set highlight group to User1
set statusline+=%= " Separation point between left and right aligned items
set statusline+=\ %{&filetype!=#''?&filetype:'none'}
set statusline+=%(\ %{(&bomb\|\|&fileencoding!~#'^$\\\|utf-8'?'\ '.&fileencoding.(&bomb?'-bom':''):'')
  \.(&fileformat!=#(has('win32')?'dos':'unix')?'\ '.&fileformat:'')}%)
set statusline+=%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)
set statusline+=\ %* " Restore normal highlight
set statusline+=\ %{&number?'':printf('%2d,',line('.'))} " Line number
set statusline+=%-2v " Virtual column number
set statusline+=\ %2p%% " Percentage through file in lines as in |CTRL-G|

" Logic for customizing the User1 highlight group is the following
" - if StatusLine colors are reverse, then User1 is not reverse and User1 fg = StatusLine fg
hi StatusLine cterm=reverse gui=reverse ctermfg=14 ctermbg=8 guifg=#83a598 guibg=#ebdbb2
hi StatusLineNC cterm=reverse gui=reverse ctermfg=11 ctermbg=0 guifg=#83a598 guibg=#928374
hi User1 ctermfg=14 ctermbg=0 guifg=#83a598 guibg=#202020
