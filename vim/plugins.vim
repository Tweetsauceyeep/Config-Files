"========== PLUGINS ============
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x',
  \ 'for': 'javascript'
  \ }
Plug 'lervag/vimtex', {'for': ['tex', 'markdown']}
Plug 'sirver/ultisnips', {'for': ['javascript', 'tex', 'html', 'python']}
Plug 'vimwiki/vimwiki', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown'}
Plug 'alvan/vim-closetag', {'for': ['javascript', 'html']}
Plug 'junegunn/goyo.vim', {'for': ['markdown', 'tex']}
Plug 'lifepillar/vim-gruvbox8'
call plug#end()
syntax on
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
      \ 'info':    ['fg', 'yep'],
      \ 'border':  ['fg', 'FZFTest'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

"========= COC ==============
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-html',
  \]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"+++++++++ VIM WIKI ++++++++++++++++++++
let g:vimwiki_list = [{'path': '~/Obsidian-Notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"++++++++++++++++++ VIM MARKDOWN PREVIEW +++++++++++++++++=

nnoremap <leader>m :MarkdownPreviewToggle<CR>
" set to 1, nvim will open the preview window after entering the markdown buffer
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
