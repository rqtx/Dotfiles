#!/bin/bash

files=("ArchUpdate.sh" "proxychains_test.sh")
for file in "${files[@]}"
do
  rm -fv ~/"$file"
done
stow --verbose=2 -t ~ dotfiles
stow --verbose=2 -t /usr/bin scripts
