
set nocompatible              " be iMproved, required

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Sets how many lines of history VIM has to remember
set history=50

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
"set t_vb=
"set tm=500

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Show matching brackets when text indicator is over them
set showmatch

" do incremental searching
set incsearch

" A buffer becomes hidden when it is abandoned
"set hidden

" With a map leader it's possible to do extra key combinations
" like <Leader>w saves the current file
let mapleader = ";"
"let g:mapleader = ";"

" No Menubar
set go=

syntax enable
syntax on

"set term=screen-256color
colorscheme molokai

set hlsearch

"set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on the WiLd menu
set wildmenu

" Always show current position
set ruler

" Show line number
set number
"set relativenumber

" display incomplete commands
set showcmd

set laststatus=2 " Always show the status line

" Highlight the cursor line
set cursorline

" Set borderline (or reference line)
set colorcolumn=80 " or set cc=80, use set cc= to unset the option

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" expand tab with spaces
"set expandtab
set noexpandtab

" 1 tab == 4 spaces
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4

" Linebreak on 500 characters
set lbr
"set tw=500
set wrap "Wrap lines

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nowb
set nobackup

" Set to auto read when a file is changed from the outside
set autoread

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set fileformats=unix,dos,mac

" Ignore compiled and backup files
set wildignore=*.o,*.pyc,*~

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <Leader>n :bn<CR>
nnoremap <Leader>b :bp<CR>

" Edit file
"nmap <Leader>e :edit<Space>

" Save file
nmap <Leader>w :w!<CR>
nmap <Leader>q :q<CR>

" window resizing
nmap    w-  :vertical resize -3<CR>
nmap    w=  :vertical resize +3<CR>
nmap    w,  :resize +3<CR>
nmap    w.  :resize -3<CR>

"Fast reloading of the .vimrc
nmap <Leader>sv :source ~/.vimrc<CR>

"Fast editing of .vimrc
nmap <Leader>ev :call SwitchToBuf("~/.vimrc")<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickfix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" List all errors.
nmap <Leader>cl :clist!<CR>
" Display the next error in the list
nmap <Leader>cn :cnext<CR>
" Display the previous error in the list
nmap <Leader>cp :cprevious<CR>
" Open the quickfix window when there are recognized errors
nmap <Leader>cw :cw 10<CR>
" Close the quickfix window
nmap <Leader>cq :cclose<CR>
" Go to older error list
nmap <Leader>co :colder<CR>
" Go to newer error list
nmap <Leader>ca :cnewer<CR>

" open/close quickfix window
map <F6> :bo cw<CR>
map <C-c> :cclose<CR>

augroup vimrcEx
au!

" For all text files set 'textwidth' to 78 characters.
"autocmd FileType text setlocal textwidth=78

" For all text files load abbreviation settings
autocmd Filetype text source ~/.vim/scripts/abbrevs.vim

" Settins below: 'et' for expandtab, 'sta' for smarttab, 'sw' for shiftwidth, 'sts' for softtabstop

" For python files tab & indent
autocmd FileType python setlocal et sta sw=4 sts=4

" For markdown files tab & indent
autocmd FileType markdown setlocal et sta sw=4 sts=4

" load skel.c for C source files
" autocmd BufNewFile *.[ch] 0read ~/.vim/scripts/skel.c


" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

augroup END

