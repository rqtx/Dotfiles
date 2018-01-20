#!/bin/bash

stow -t ~ dotfiles

xrdb -merge ~/.Xresources
