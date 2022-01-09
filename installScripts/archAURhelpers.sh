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

# Install pacaur dependencies from arch repos
sudo pacman -S expac yajl git cower --needed
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=auracle-git
makepkg -s PKGBUILD --install --needed

# Install "pacaur" from AUR
if [ ! -n "$(pacman -Qi pacaur)" ]; then
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
    makepkg -s PKGBUILD --install --needed
fi

# Install "yay" from AUR
if [ ! -n "$(pacman -Qi yay)" ]; then
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=yay
    makepkg -s PKGBUILD --install --needed
fi

# Clean up...
cd ~
rm -r /tmp/pacaur_install

##### yay install #####
#pacman -S --needed git base-devel
#git clone https://aur.archlinux.org/yay.git /tmp/yay
#cd /tmp/yay 
#makepkg -si
#cd -
