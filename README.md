Prerequests
===
cmake, ctag, cscope, python-dev, git, gcc, gcc-c++, vim, tmux, build-essential

Install
===

topdir=`pwd`

cd $topdir

git clone https://github.com/chenzhihui244/vim-ide.git

ln -s $topdir/vim-ide/vim ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vim/colors

vim +PlugInstall

ln -s ~/.vim/plugged/molokai/colors/molokai.vim ~/.vim/colors/

cd ~/.vim/plugged/YouCompleteMe

python install.py --clangd-completer

tmux
===

ln -s $topdir/vim-ide/tmux/tmux.conf ~/.tmux.conf

ln -s $topdir/vim-ide/tmux/tmux-statusline.conf ~/.tmux-statusline.conf

term
===

Add the following into .bashrc:

echo 'export TERM="xterm-256color"' >> ~/.bashrc

Install powerline fonts
===

git clone https://github.com/powerline/fonts.git

cd fonts && ./install.sh
