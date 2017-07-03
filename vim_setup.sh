#!/bin/bash

rm -rf ~/.vim
rm -rf ~/vim
rm -rf ~/dotfiles
sudo apt install exuberant-ctags -y

cd ~

git clone https://github.com/souravchk/dotfiles.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

wget https://github.com/lifepillar/vim-solarized8/archive/v0.6.tar.gz \
	&& tar -xvzf v0.6.tar.gz ~/.vim/ \
	&& rm -f v0.6.tar.gz

cat ~/dotfiles/vimrc > ~/.vimrc 
rm -rf ~/dotfiles

# Disable some plugins I don't like much.
sed	-e '/nerdtree/d' \
	-e '/navigator/d' \
	-i ~/.vimrc

echo "set encoding=utf-8 nobomb" >> ~/.vimrc 
vim +PluginInstall +qall
