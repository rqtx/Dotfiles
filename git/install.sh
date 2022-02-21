#!/bin/bash

rm -fv ~/gitconfig
rm -fv ~/.local/bin/git_diff_wrapper

mkdir -p $HOME/.local/bin
stow --verbose=2 -t $HOME gitconfig
stow --verbose=2 -t $HOME/.local/bin gitdiff
