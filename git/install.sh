#!/bin/bash

files=(".gitconfig")
for file in "${files[@]}"
do
  rm -fv ~/"$file"
done
mkdir -p $HOME/.local/bin
stow --verbose=2 -t $HOME gitconfig
stow --verbose=2 -t $HOME/.local/bin gitdiff
