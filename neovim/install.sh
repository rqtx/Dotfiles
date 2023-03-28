#!/bin/bash

files=("keymaps.lua")
for file in "${files[@]}"
do
  rm -fv ~/.config/nvim/lua/config/"$file"
done
stow --verbose=2 -t ~/.config/nvim/lua/config/ config
stow --verbose=2 -t ~/.config/nvim/lua/plugins/ plugins
