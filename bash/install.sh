#!/bin/bash

files=(".bash_alias"  ".bashrc"  ".git-completion.bash")
for file in "${files[@]}"
do
  rm -fv ~/"$file"
done
stow --verbose=2 -t ~ dotfiles
stow --verbose=2 -t /usr/bin scripts
