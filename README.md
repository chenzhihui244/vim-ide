Prerequests
===
cmake, ctag, cscope python-dev


Install
===

cd ~

mkdir .vim

mkdir .vim/colors

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
cd .vim

git clone https://github.com/chenzhihui244/vim-ide.git

ln -s ~/.vim/vim-ide/vimrc ~/.vimrc

vim+PlugInstall

ln -s ~/.vim/plugged/molokai/colors/molokai.vim ~/.vim/colors/

cd ~/.vim/plugged/YouCompleteMe

python install.py --clang-completer


tmux
===
git clone https://github.com/chenzhihui244/tmux.git
ln -s /home/chenzhihui/tmux/tmux.conf ~/.tmux.conf
ln -s /home/chenzhihui/tmux/tmux-statusline.conf ~/.tmux-statusline.conf


term
===

Add the following into .bashrc:

export TERM="xterm-256color"


Install powerline fonts
===

git clone https://github.com/powerline/fonts.git

cd fonts && ./install.sh
