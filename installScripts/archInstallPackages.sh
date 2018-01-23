#!/bin/bash

echo "==> Adding GPG keys"
gpg --keyserver keys.gnupg.net --recv-keys 702353E0F7E48EDB
echo "	-> ncurses5-compat-libs GPG key added"
echo "done"

echo "==> Install Packages through pacman"
pkgPacman=("neovim" "redshift" "wget" "curl" "git" "ibus" "pulseaudio" "pavucontrol" "p7zip" "tmux" "termite" "base-devel" "cmake" "ibus" "xclip" "stow")
for i in "${pkgPacman[@]}"
do
  sudo pacman -S --needed $i
done
echo "done"

echo "==> Install Packages through pacaur"
# Check if "pacaur" is installed
if [ ! -n "$(pacman -Qs pacaur)" ]; then
	sh ./AURhelpers.sh
fi

# pacaur install
pkgPacaur=("acroread" "adobe-source-code-pro-fonts" "cppcheck" "ctags" "deepin-screenshot" "sublime-text-dev" "veracrypt" "kompare-git" "qmplay2" "python-pip" "ncurses5-compat-libs" "npm")

for i in "${pkgPacaur[@]}"
do 
  pacaur -S --needed --noedit $i 
done
echo "done"

echo "==> Installing extra"
sudo pip install cmakelint
sudo pip install bandit
sudo pip install jedi
sudo npm install -g jsonlint
sudo npm install -g textlint-rule-ginger
echo "done"