#!/bin/bash

# install yay first
pacman -S yay

# install all package trough yay
yay -S - < install_files/pacman_packages_list.txt

# create symlinks for dotfiles
bash install_files/symlink_list.txt

# install non AUR/Pacman stuff
# cf install_files/

# rofi colors scheme
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
cd ..
rm -rf rofi