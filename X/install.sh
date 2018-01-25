#!/bin/bash

files=(".Xresources")
for file in "${files[@]}"
do
  rm -fv ~/"$file"
done
stow --verbose=2 -t ~ dotfiles

xrdb -merge ~/.Xresources
