#!/bin/bash
# IDENTIFICATION
#         neovim/install.sh
#######
## Do not forget to run :PlugInstal inside neovim to install all packages
## If YouCompleteme do not run properly compile it with:
#	cd ~/.local/shared/nvim/plugged/youcompleteme
#	./install.py --clang-completer
#   and install ncurses5-compat-libs
#######

rm -rfv ~/.config/nvim
mkdir -v ~/.config/nvim
stow --verbose=2 -t ~/.config/nvim nvim

sudo rm -rfv /usr/share/nvim/runtime/ftplugin/
sudo stow --verbose=2 -t /usr/share/nvim/runtime/ runtime

###Vim Required dirs
mkdir -p ~/.vim/tmp/swap
mkdir -p ~/.vim/tmp/undo
mkdir -p ~/.vim/tmp/backup

###Plugins
#Remove plugins file to force install
rm -rfv ~/.vim/autoload/plug.vim  
#install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

###Powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/OTF
fc-cache -vf
mkdir -p ~/.config/fontconfig/conf.d
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

### python support ###
pip3 install --user neovim



