Prerequests
===
cmake, ctag, cscope


Install
===

cd ~

mkdir .vim

mkdir .vim/colors

cd .vim

git clone https://github.com/chenzhihui244/vim-ide.git

ln -s ~/.vim/vim-ide/vimrc ~/.vimrc

vim+PlugInstall

ln -s ~/.vim/plugged/molokai/colors/molokai.vim ~/.vim/colors/

cd ~/.vim/plugged/YouCompleteMe

python install.py --clang-completer


term
===

Add the following into .bashrc:

export TERM="xterm-256color"


Install powerline fonts
===

git clone https://github.com/powerline/fonts.git

cd fonts && ./install.sh
