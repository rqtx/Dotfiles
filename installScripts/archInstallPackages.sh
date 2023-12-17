#!/bin/bash

echo "==> Install Packages through pacman"
pkgPacman=("alacritty" "redshift" "docker" "wget" "curl" "git" "ibus" "pipewire" "pipewire-alsa" "pipewire-pulse" "pavucontrol" "podman" "p7zip" "tmux" "base-devel" "cmake" "xclip" "stow" "clang" "neovim " "npm" "starship" "just" "ttf-font-awesome")

for i in "${pkgPacman[@]}"
do
  sudo pacman -S --needed --noconfirm $i
done
echo "done"

echo "==> Install Packages through yay"
# yay install
pkgyay=("adobe-source-code-pro-fonts" "aws-cli" "bash-completion" "brave-bin" "cppcheck" "code" "ctags" "deepin-screenshot" "firefox" "google-chrome" "veracrypt" "virt-manager" "kompare-git" "qmplay2" "python-pip" "powerline-go" "perl-critic" "stow" "timeshift" "jslint" "xflux" "sass-lint" "yamllint")

for i in "${pkgyay[@]}"
do 
  yay -S --needed --answerclean=All --nodiffmenu --noconfirm $i 
done
echo "done"
