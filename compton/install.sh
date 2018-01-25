#/bin/bash

files=("compton.conf")
for file in "${files[@]}"
do
  sudo rm -fv ~/.config/"$file"
done
stow --verbose=2 -t ~/.config/ dotfiles
