#!/bin/bash

echo "==> Adding GPG keys"
gpg --keyserver keys.gnupg.net --recv-keys 702353E0F7E48EDB
echo "	-> ncurses5-compat-libs GPG key added"
echo "done"

echo "==> Install Packages through pacman"
pkgPacman=("alacritty" "redshift" "wget" "curl" "git" "ibus" "pulseaudio" "pavucontrol" "p7zip" "tmux" "base-devel" "cmake" "xclip" "stow" "clang" "npm")
for i in "${pkgPacman[@]}"
do
  sudo pacman -S --needed --noconfirm --cleanafter $i
done
echo "done"

echo "==> Install Packages through yay"
# yay install
pkgyay=("acroread" "adobe-source-code-pro-fonts" "cppcheck" "ctags" "deepin-screenshot" "firefox" "google-chrome" "veracrypt" "kompare-git" "qmplay2" "python-pip" "powerline-go" "perl-critic" "ncurses5-compat-libs" "stow" "xflux" "sass-lint" "yamllint")

for i in "${pkgyay[@]}"
do 
  yay -S --needed --noedit --noconfirm --cleanafter $i 
done
echo "done"

echo "==> Installing extra"
pip install --upgrade pip --user
pip install awscli --upgrade --user
pip install neovim --user
pip install cmakelint --user
pip install bandit --user
pip install jedi --user
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
command -v nvm
npm install -g jsonlint
npm install -g textlint-rule-ginger
npm install -g eslint
echo "done"
