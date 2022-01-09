#!/bin/bash

rm -rv ~/.config/alacritty
mkdir -v ~/.config/alacritty
stow --verbose=2 -t ~/.config/alacritty/ dotfiles
