if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

:runtime plug-colorscheme.vim
:runtime plug-minibufexpl.vim
:runtime plug-nerdtree.vim
:runtime plug-airline.vim
:runtime plug-grepper.vim
:runtime plug-ycm.vim
:runtime plug-whitespace.vim
:runtime plug-taglist.vim

call plug#end()
