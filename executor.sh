#!bin/bash

echo "==> Moving configuration files..."
sudo cp config/arch/i3-sensible-terminal /usr/bin/
cp config/arch/configi3 ~/.i3/config
cp config/arch/configTermite ~/.config/termite/config
cp config/arch/tmux.conf ~/.tmux.conf
cp config/arch/pacman.conf /etc/
echo "done"

echo "==> Updating Mirror list..."
sudo pacman-mirror -g
echo "done"

echo "==> Updating Archlinux keyring..."
sudo pacman -S archlinux-keyring
echo "done"

echo "==> Adding  GPG keys..."
gpg --keyserver keys.gnupg.net --recv-keys 702353E0F7E48EDB
echo "	-> ncurses5-compat-libs GPG key added"

echo "==> Checking for system updates..."
sudo pacman -Syu
echo "done"

echo "==> Installing AURhelpers..."
sh ./arch/AURhelpers.sh
echo "done"

echo "Installing Packages..."
sh ./arch/installPackages.sh
echo "done"

echo "Neovim configuration"
sh ./arch/neovimConfig.sh
echo"done"
