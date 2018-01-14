#!/bin/bash

echo "==> Adding GPG keys"
gpg --keyserver keys.gnupg.net --recv-keys 702353E0F7E48EDB
echo "	-> ncurses5-compat-libs GPG key added"
echo "done"

echo "==> Install Packages through pacman"
sudo pacman -S --needed neovim redshift wget curl git filezilla ibus pulseaudio pavucontrol p7zip tmux termite base-devel cmake ibus xclip
echo "done"

echo "==> Install Packages through pacaur"
# Check if "pacaur" is installed
if [ ! -n "$(pacman -Qs pacaur)" ]; then
	sh ./AURhelpers.sh
fi

pacaur -S --needed --noedit deepin-screenshot sublime-text-dev veracrypt acroread armory-bin kompare-git gitkraken qmplay2 bitcoin-core cppcheck ctags python-pip ncurses5-compat-libs npm 
echo "done"

echo "==> Installing Extra"
sudo pip install cmakelint
sudo pip install bandit
sudo pip install jedi
sudo npm install -g jsonlint
sudo npm install -g textlint-rule-ginger
echo "done"
