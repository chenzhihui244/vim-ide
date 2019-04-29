Plug 'rdnetto/YCM-Generator'
Plug 'Valloric/YouCompleteMe'

set completeopt=longest,menu

let g:ycm_python_binary_path = 'python'
let g:ycm_rust_src_path = '/usr/local/src/rust/src'

"let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_key_invoke_completion = '<C-Space>' " Default
"let g:ycm_key_detailed_diagnostics = '<Leader>d' " Default
"let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']

let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf = '~/.vim/scripts/.ycm_extra_conf.py'

nnoremap <Leader>gt :YcmCompleter GoTo<CR>
nnoremap <Leader>gd :YcmCompleter GetDoc<CR>
nnoremap <Leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <Leader>gr :YcmCompleter GoToReferences<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

nmap <Leader>d <C-]>
