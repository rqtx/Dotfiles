#!/bin/bash

files=("keymaps.lua")
for file in "${files[@]}"
do
  rm -fv ~/.config/nvim/lua/config/"$file"
done
mkdir -p ~/.config/nvim/lua/config
mkdir -p ~/.config/nvim/lua/plugins
stow --verbose=2 -t ~/.config/nvim/lua/config/ config
stow --verbose=2 -t ~/.config/nvim/lua/plugins/ plugins
