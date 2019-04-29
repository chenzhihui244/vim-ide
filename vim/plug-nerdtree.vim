
Plug 'scrooloose/nerdtree'

" Global commands
" :NERDTree [<start-directory> | <bookmark>], help :NERDTree to see more detail
nmap <Leader>nt :NERDTreeToggle<CR>
nmap <Leader>e :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\~$', '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]

