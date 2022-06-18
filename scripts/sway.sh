#!/bin/bash

pwd

sudo pacman -Suy --noconfirm
sudo pacman -S xorg-minimal --noconfirm

# o
mkdir ~/Downloads
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/Projects

printf "the main folders were made" \n && sleep 1

## Fonts
sudo pacman -S --needed --noconfirm noto-fonts-emoji ttf-font-awesome ttf-droid ttf-hack

# termnal apps
sudo pacman -S --needed --noconfirm htop ranger feh neofetch
# yay --needed --noconfirm pfetch # alternative to neofetch

# Desktop apps
sudo pacman -S --needed --noconfirm rofi alacritty pcmanfm dunst firefox
# yay --needed --noconfirm microsoft-edge-stable-bin

# things you would want to have
sudo pacman -S --needed --noconfirm ffmpegthumbnailer unzip zip unrar


printf "and after all of that, installing i3-gaps" sleep 1

sudo pacman -S --needed sway swaybg

## the .dotfiles

cp -R ./../.config/sway/ ~/.config/
cp -R ./../.config/dunst/ ~/.config/

