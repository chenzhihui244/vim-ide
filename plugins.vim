if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

so $HOME/.vim/vim-ide/plug-colorscheme.vim
so $HOME/.vim/vim-ide/plug-minibufexpl.vim
so $HOME/.vim/vim-ide/plug-nerdtree.vim
so $HOME/.vim/vim-ide/plug-airline.vim
so $HOME/.vim/vim-ide/plug-grepper.vim
so $HOME/.vim/vim-ide/plug-ycm.vim
so $HOME/.vim/vim-ide/plug-whitespace.vim
so $HOME/.vim/vim-ide/plug-taglist.vim

call plug#end()
