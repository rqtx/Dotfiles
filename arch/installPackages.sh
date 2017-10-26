#!/bin/bash
echo "==> Mirror list"
sudo pacman-mirrors -g 

echo "==> Archlinux keyring"
sudo pacman -S --needed --noconfirm archlinux-keyring


echo "==> Adding GPG keys"
gpg --keyserver keys.gnupg.net --recv-keys 702353E0F7E48EDB
echo "	-> ncurses5-compat-libs GPG key added"

echo "==> Checking for system updates..."
sudo pacman -Syu --needed --noconfirm

##### Install Packages through pacman #####
sudo pacman -S --needed --noconfirm neovim redshift wget curl git filezilla ibus pulseaudio pavucontrol p7zip tmux termite base-develsudo cmake ibus

##### Install Packages through pacaur #####

# Check if "pacaur" is installed
if [ ! -n "$(pacman -Qs pacaur)" ]; then
	sh ./AURhelpers.sh
fi

pacaur -S --needed --noconfirm --noedit deepin-screenshot sublime-text-dev veracrypt acroread armory-bin kompare-git gitkraken qmplay2 bitcoin-core cppcheck ctags python-pip ncurses5-compat-libs 

##### Extra #####
sudo pip install cmakelint
sudo pip install bandit
sudo pip install jedi
sudo npm install -g jsonlint
sudo npm install -g textlint-rule-ginger
