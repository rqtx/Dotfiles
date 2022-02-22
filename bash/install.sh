#!/bin/bash

files=(".bashrc" ".bash_alias" ".bash_aws" ".bash_gcloud" ".bash_k8s" ".git-completion.bash" "ArchUpdate.sh" "proxychains_test.sh")
for file in "${files[@]}"
do
  rm -fv ~/"$file"
done
stow --verbose=2 -t ~ dotfiles
