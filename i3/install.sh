#!/bin/bash

files=("config")
for file in "${files[@]}"
do
  rm -fv ~/.i3/"$file"
done
stow --verbose=2 -t ~/.i3/ dotfiles
