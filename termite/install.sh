#!/bin/bash

rm -r ~/.config/termite
mkdir ~/.config/termite
stow -t ~/.config/termite/ dotfiles
