#!/bin/bash

echo "Checking for system updates..."
sudo pacman -Syu

##### Install Packages through pacman #####
sudo pacman -S --needed --noconfirm neovim redshift wget curl git filezilla ibus pulseaudio pavucontrol

##### Install Packages through pacaur #####
pacaur -S --needed --noconfirm --noedit deepin-screenshot sublime-text-dev veracrypt acroread armory-bin kompare-git gitkraken qmplay2 bitcoin-core minergate

