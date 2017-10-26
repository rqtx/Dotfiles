#!/bin/bash

sudo cp ../config/arch/i3-sensible-terminal /usr/bin/
cp ../config/arch/configi3 ~/.i3/config
cp ../config/arch/configTermite ~/.config/termite/config
cp ../config/arch/tmux.conf ~/.tmux.conf
cp ../config/arch/Xresources ~/.Xresources

xrdb -merge ~/.Xresources
