#!/bin/bash

rm -f ~/.vimrc
rm -rf ~/.vim
rm -rf ~/vim
rm -rf ~/dotfiles

cd ~

git clone https://github.com/souravchk/dotfiles.git

cat ~/dotfiles/vimrc > ~/.vimrc && echo "set encoding=utf-8 nobomb" >> ~/.vimrc && vim +PluginInstall +quall
