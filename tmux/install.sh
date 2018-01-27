#!/bin/bash

files=(".tmux.conf")
for file in "${files[@]}"
do
  rm -fv ~/"$file"
done

mkdir -p ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

stow --verbose=2 -t ~ dotfiles 
