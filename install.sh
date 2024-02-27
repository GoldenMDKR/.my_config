#!/bin/bash

# install yay first
sudo pacman -S --needed yay

# install all package trough yay
yay -S --needed - < install_files/pacman_packages_list.txt

# create symlinks for dotfiles
bash install_files/symlink_list.txt

# install non AUR/Pacman stuff
# cf install_files/

# rofi colors scheme
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
bash ./setup.sh
cd ..
rm -rf rofi


cp -rf wallpapers $HOME/Pictures/


# setup lockscreen wallpaper 
betterlockscreen -u $HOME/Picture/wallpapers/megumin_lock.png

# setup wallpaper 
nitrogen --set-scaled $HOME/Pictures/wallpapers/tanya.png

# throw an error and open nitrogen just save manualy is needed
nitrogen --save 