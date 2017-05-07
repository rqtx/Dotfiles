#!/bin/bash

sudo pip install neovim
mkdir ~/.config/nvim
cp ../config/neovim/init.vim ~/.config/nvim/init.vim

# required dirs
cd ~/.vim
mkdir tmp
cd tmp/
mkdir swap
mkdir undo
mkdir backup
cd

#install vundle
git clone https://github.com/gmarik/vundle.git ~/.config/nvim/bundle
nvim +BundleInstall
nvim +GoInstallBinaries

# install YCM
cd ~/.vim/bundle/YouCompleteMe
./install.sh --gocode-completer --clang-completer
