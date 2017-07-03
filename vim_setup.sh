#!/bin/bash

rm -rf ~/.vim
rm -rf ~/vim
rm -rf ~/dotfiles
sudo apt install exuberant-ctags -y

cd ~

git clone https://github.com/souravchk/dotfiles.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# Disable some plugins I don't like much.
# Written stupidly to cope with weird sed versions.
# Note: 'brew install gnu-sed' on OS X
sed  -e 's/christoomey/PProvost/' \
    -e 's/tmux-navigator/markdown-jekyll/' \
    -e '/nerdtree/d' \
    -e '/solarized/d' \
    -e '/altercation/d' \
    -e '/flazz/d' \
    -e "s/'kchmck\/vim-coffee-script'/'leshill\/vim-json'/" -i ~/dotfiles/vimrc

cat ~/dotfiles/vimrc > ~/.vimrc 
rm -rf ~/dotfiles

echo "set encoding=utf-8 nobomb" >> ~/.vimrc 
vim +PluginInstall +qall
