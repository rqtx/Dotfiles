#!bin/bash

echo "==> Moving configuration files..."
sudo cp config/arch/i3-sensible-terminal /usr/bin/
cp config/arch/configi3 ~/.i3/config
cp config/arch/compton.conf ~/.config/
mkdir ~/.config/termite/
cp config/arch/configTermite ~/.config/termite/config
cp config/arch/tmux.conf ~/.tmux.conf
sudo cp config/arch/pacman.conf /etc/
echo "done"

echo "==> Checking for system updates..."
sudo pacman -Syu --needed --noconfirm
echo "done"

echo "==> Updating Mirror list..."
sudo pacman-mirrors -g
echo "done"

echo "==> Archlinux keyring"
sudo pacman -S --needed --noconfirm archlinux-keyring
echo "done"

echo "==> Checking for system updates..."
sudo pacman -Syu --needed --noconfirm
echo "done"

cd arch
echo "==> Installing AURhelpers..."
sh ./AURhelpers.sh
echo "done"

echo "Installing Packages..."
sh ./installPackages.sh
echo "done"

echo "Neovim configuration"
sh ./neovimConfig.sh
echo "done"
