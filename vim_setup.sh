#!/bin/bash

rm -rf ~/.vim
rm -rf ~/vim
rm -rf ~/dotfiles
sudo apt install exuberant-ctags -y

cd ~

git clone https://github.com/souravchk/dotfiles.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# Disable some plugins I don't like much.
sed  -i -e 's/christoomey/PPovost/' \
	-e 's/tmux-navigator/markdown-jekyll/' \
	-e '/nerdtree/d' \
	-e '/solarized/d' \
	-e '/altercation/d' \
	-e '/flazz/d' \
	-e 's|christoomey/vim-tmux-navigation|PPovost/vim-markdown-jekyll|' ~/dotfiles/vimrc

cat ~/dotfiles/vimrc > ~/.vimrc 
rm -rf ~/dotfiles

echo "set encoding=utf-8 nobomb" >> ~/.vimrc 
vim +PluginInstall +qall
