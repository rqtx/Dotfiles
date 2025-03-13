#/bin/bash

##### yaourt install ####
#Already on pacman.conf

##### pacaur install #####

# Create a tmp-working-dir and navigate into it
mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install

# If you didn't install the "base-devel" group,
# we'll need those.
sudo pacman -S binutils make gcc fakeroot go --needed

# Install "yay" from AUR
#if [ ! -n "$(pacman -Qi yay)" ]; then
#    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=yay
#    makepkg -s PKGBUILD --install --needed
#fi

##### yay install #####
if [ ! -n "$(pacman -Qi yay)" ]; then
    pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay 
    makepkg -si
cd -
fi

# Clean up...
cd ~
rm -r /tmp/pacaur_install
