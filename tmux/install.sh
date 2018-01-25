#!/bin/bash

files=(".tmux.conf")
for file in "${files[@]}"
do
  rm -fv ~/"$file"
done
stow --verbose=2 -t ~ dotfiles 
