#!/bin/bash

rm -rf ~/.vim
rm -rf ~/vim
rm -rf ~/dotfiles
sudo apt install exuberant-ctags -y

cd ~

git clone https://github.com/souravchk/dotfiles.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cat ~/dotfiles/vimrc > ~/.vimrc 
rm -rf ~/dotfiles

# Disable some plugins I don't like much.
sed	-e """s/Plugin 'scrooloose/nerdtree'/# Plugin 'scrooloose nerdtree'/""" \
	-e """s/Plugin 'christoomey/vim-tmux-navigator'/# Plugin 'christoomey/vim-tmux-navigator'/""" \
	-i ~/.vimrc

echo "set encoding=utf-8 nobomb" >> ~/.vimrc 
vim +PluginInstall +qall
