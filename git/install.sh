#!/bin/bash

files=(".gitconfig")
for file in "${files[@]}"
do
  rm -fv ~/"$file"
done
stow --verbose=2 -t $HOME gitconfig
stow --verbose=2 -t $HOME/.local/bin gitdiff
