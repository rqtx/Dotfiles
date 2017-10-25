#!/bin/bash
#######
## Do not forget to run :PlugInstal inside neovim to install all packages
## If YouCompleteme do not run properly compile it with:
#	cd ~/.vim/bundle/YouCompleteMe
#	./install.py --clang-completer
#######
#sudo pip install neovim
mkdir ~/.config/nvim
cp ../config/neovim/init.vim ~/.config/nvim/init.vim

###Required dirs
cd ~/.vim
mkdir tmp
cd tmp/
mkdir swap
mkdir undo
mkdir backup
cd

###install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
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
pip3 install --user neovimpip install neovim



