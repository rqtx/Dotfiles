#!/bin/bash

files=("config")
for file in "${files[@]}"
do
  rm -fv ~/.i3/"$file"
done

mkdir -p ~/.config/i3;
stow --verbose=2 -t ~/.config/i3 i3statusbar
stow --verbose=2 -t ~/.config/i3 i3-config
stow --verbose=2 -t ~/.i3/ i3-config

yay -S --needed --answerclean=All --nodiffmenu --noconfirm ulauncher rofi
git clone git@github.com:maledorak/dmenu-hotkeys.git ~/.dmenu-hotkeys