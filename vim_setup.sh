#!/bin/bash
echo off
rm -f ~/.vimrc
rm -rf ~/.vim
echo on
sudo apt install exuberant ctags -y
git clone https://github.com/souravchk/dotfiles.git
cat dotfiles/vimrc > ~/.vimrc
echo "set encoding=utf-8 nobomb" >> ~/.vimrc

vim +PluginInstall +quall
