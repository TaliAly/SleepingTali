#!usr/bin/bash

clear

echo "in any case, you can do ctrl+c to stop at every moment"
sleep 1
echo "1"
sleep 1
echo "2"
sleep 1
echo "3"
echo "starting!"

sleep 1

echo "hello I'm going to be installing this :>"

sleep 2

echo "updating to get the most recent things"
sudo pacman -Sy
sudo pacman -Syu

sleep 1

echo "let's start with the yay package, if this doesn't work, install base-devel please :D"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --si

sleep 1

clear
echo "yay was installed!"

sleep 0.5
echo "now installing the fonts"
yay -Sy noto-fonts-emoji
sudo pacman -S ttf-fira-code ttf-fantasque-sans-mono
yay -S i3-gaps-rounded-git

sleep 1
echo "now installing terminal apps"
sudo pacman -S ranger htop ncdu

sleep 1

echo "normal apps"
sudo pacman -S nemo alacritty 