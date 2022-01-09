#!/bin/bash

files=("git_diff_wrapper" "ArchUpdate.sh" "bluetooth_switch_profile.sh" "proxychains_test.sh")
for file in "${files[@]}"
do
  sudo rm -fv ~/.local/bin/"$file"
done
stow --verbose=2 -t ~/.local/bin/ local
