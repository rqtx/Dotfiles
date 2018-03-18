#/bin/bash

##### yaourt install ####
#Already on pacman.conf

##### pacaur install #####

# Create a tmp-working-dir and navigate into it
mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install

# If you didn't install the "base-devel" group,
# we'll need those.
sudo pacman -S binutils make gcc fakeroot --needed

# Install pacaur dependencies from arch repos
sudo pacman -S expac yajl git cower --needed

# Install "pacaur" from AUR
if [ ! -n "$(pacman -Qi pacaur)" ]; then
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
    makepkg PKGBUILD --install --needed
fi

# Clean up...
cd ~
rm -r /tmp/pacaur_install
