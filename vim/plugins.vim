",'for': ['javascript', 'html', 'json', 'python','markdown', 'shell', 'bash', 'tex', 'vim', 'config']
"========== PLUGINS ============
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release', 'for': ['javascript', 'html', 'json', 'python','markdown', 'shell', 'bash', 'tex', 'vim', 'config', 'go']}
"Plug 'junegunn/fzf.vim'
"Plug 'junegunn/fzf'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x',
  \ 'for': 'javascript'
  \ }
"Plug 'lervag/vimtex', {'for': ['tex', 'markdown']}
"Plug 'sirver/ultisnips', {'for': ['javascript', 'tex', 'html', 'python']}
Plug 'vimwiki/vimwiki', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown'}
Plug 'alvan/vim-closetag', {'for': ['javascript', 'html']}
Plug 'maxmellon/vim-jsx-pretty', {'for': 'javascript'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
"Plug 'lifepillar/vim-gruvbox8'
Plug 'conweller/findr.vim'
Plug 'dstein64/vim-startuptime'
" Build the extra binary if cargo exists on your system.
call plug#end()
syntax on


"close tag
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'
" =================== FZF ================
" Tell FZF to use RG - so we can skip .gitignore files even if not using
" :GitFiles search
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden -g "!{node_modules,.git}" '
nmap <silent> <leader>f ;Files<CR>
nmap <silent> <leader><leader> ;Files<CR>
nmap <silent> <leader>j ;Rg<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
"With the above, every time we invoke Rg, FZF + ripgrep will not consider filename as a match in Vim.

hi! FZFTest guifg=#FF0000 guibg=NONE ctermbg=NONE ctermfg=Cyan
hi! yep guifg=#FF0000 guibg=NONE ctermbg=NONE ctermfg=Blue
let g:fzf_layout = {
    \ 'window': {
        \'width': 0.8,
        \'height': 0.8,
        \'highlight': 'FZFTest'
    \ }
\ }

let g:fzf_colors =
    \ { 'fg':      ['fg', 'FZFTest'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \}


" VIMWIKI
let g:vimwiki_list = [{'path': '$HOME/Notes/Obsidian-Notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

function! VimwikiLinkHandler(link)
    if a:link =~ '\.\(pdf\|jpg\|jpeg\|png\|gif\)$'
        call vimwiki#base#open_link(':e ', 'file:'.a:link)
        return 1
    endif
    return 0
endfunction

