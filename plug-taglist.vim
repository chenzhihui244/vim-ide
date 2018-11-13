
Plug 'vim-scripts/taglist.vim'

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

" Toggle tag list on and off
nmap <Leader>l :TlistToggle<CR>
