let mapleader = " " 

" ++++++++++ FILE NAVIGATION WIT NO PLUG +++++++++++++++++

" basically the rg command in fzf but SLOW LMAOOOOO
"command! -nargs=1 Ngrep vimgrep "<args>"  **/*
command -nargs=1 Ngrep noautocmd vimgrep /<args>/j **/*
nnoremap <leader>[ :Ngrep 
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprev<CR>


"link:https://www.youtube.com/watch?v=faoPxXSj8n0
" Args and Buffers
nnoremap <leader>a :argadd <c-r>=fnameescape(expand('%:p:h'))<cr>/*<C-d>
nnoremap <leader>w :b <C-d>
"nnoremap <leader>e :Findr<CR>
nnoremap <leader>e :Findr<CR>

nnoremap <leader>bd :bp \| bd#<cr>
" Better navigation of command history
cnoremap <expr> / wildmenumode() ? "\<C-E>" : "/"

" Commandline abbreviations
" if we have 3 *s in row turn it into **/*
cnoremap <expr> * getcmdline() =~ '.*\*\*$' ? '/*' : '*'
" full path shortcut
cnoreabbr <expr> %% fnameescape(expand('%:p'))

" Find Under Root Directory {{{
function! FindRootDirectory()
	if !filereadable('Makefile') && !filereadable('makefile')
		" use git to find the top of the directory tree
		let root = systemlist('git rev-parse --show-toplevel')[0]
		if v:shell_error
			return '.'
		endif
		return root
	endif
	" If a makefile exists use that as the top of the directory tree
	return expand('%:p:h')
endfunction

nnoremap <leader>ff  :edit <c-r>=FindRootDirectory()<CR>/**/*



"++++++++++++++++++++++++++++++++++++++++++++++++

" go to prev file
nnoremap <leader>b :e #<CR>



" splitting into windos
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>



"tabs
nnoremap <leader>t :tabfind *

nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

inoremap jk <esc> 
inoremap kj <esc> 
nnoremap <C-m> <C-y>
" like on page up and down, keeps da cursor centered
map <C-d> <C-d>zz
map <C-u> <C-u>zz
map <C-w>h ;wincmd h<CR>
map <C-w>j ;wincmd j<CR>
map <C-w>k ;wincmd k<CR>
map <C-w>l ;wincmd l<CR>

"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l



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

