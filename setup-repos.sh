#!/bin/sh

mkdir -p ~/Code/git
mkdir -p ~/Code/gitkoo

# pull ksp laptop config files
cd ~/Code/git
git clone https://github.com/ksprashu/laptop.git

# symlink files from repo to $HOME
cd ~
ln -s ~/Code/gitkoo/laptop/powerup.sh powerup.sh
ln -s ~/Code/gitkoo/laptop/mac mac
ln -s ~/Code/gitkoo/laptop/.laptop.local .laptop.local
ln -s ~/Code/gitkoo/laptop/setup-antigen.sh setup-antigen.sh

chmod a+x powerup.sh

# pull antigen
cd ~/Code/git
git clone https://github.com/zsh-users/antigen.git

# pull powerline fonts
cd ~/Code/git
git clone https://github.com/powerline/fonts.git
cd fonts
chmod a+x install.sh
./install.sh

# pull solzarized colors
cd ~/Code/git
git clone https://github.com/altercation/solarized.git
