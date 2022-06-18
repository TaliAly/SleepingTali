#!/bin/bash

printf "i3 install?, ok! \n" && sleep 1

sudo pacman -Syu --noconfirm

# o
mkdir ~/Downloads
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/Projects

printf "the main folders were made" \n && sleep 1

## Fonts
sudo pacman -S --needed --noconfirm noto-fonts-emoji ttf-font-awesome ttf-droid 

# termnal apps
sudo pacman -S --needed --noconfirm htop ranger feh neofetch redshift
# yay --needed --noconfirm pfetch # alternative to neofetch

# Desktop apps
sudo pacman -S --needed --noconfirm rofi picom nitrogen alacritty pcmanfm dunst firefox
# yay --needed --noconfirm microsoft-edge-stable-bin

# things you would want to have
sudo pacman -S --needed --noconfirm xorg-xinit ffmpegthumbnailer unzip zip unrar


printf "and after all of that, installing i3-gaps" sleep 1

sudo pacman -S --needed i3-gaps i3blocks

## the .dotfiles

cp -R ./.config/i3/ ~/.config/
cp -R ./.config/dunst/ ~/.config/
cp ./.config/.xinitrc ~/.xinitrc 