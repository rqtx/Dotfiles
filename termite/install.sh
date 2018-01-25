#!/bin/bash

rm -rv ~/.config/termite
mkdir -v ~/.config/termite
stow --verbose=2 -t ~/.config/termite/ dotfiles
