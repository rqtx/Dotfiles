#!/bin/bash

files=("pacman.conf")
for file in "${files[@]}"
do
  sudo rm -vf /etc/"$file"
done
sudo stow --verbose=2 -t /etc/ dotfiles/
