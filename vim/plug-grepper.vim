
Plug 'mhinz/vim-grepper'

" for browsing the input history
cnoremap <c-n> <down>
cnoremap <c-p> <up>

nnoremap <Leader>g :Grepper -tool git -cword<cr>
nnoremap <Leader>G :Grepper -tool ag -cword<cr>
" see https://github.com/ggreer/the_silver_searcher for more about ag

let g:grepper = {
    \ 'tools': ['ag', 'git', 'grep'],
    \ 'next_tool': '<Leader>g',
    \ }

let g:grepper.git =
  \ { 'grepprg': 'git -C `git rev-parse --show-toplevel` grep -nI' }
let g:grepper.ag =
  \ { 'grepprg': 'ag -i' }
