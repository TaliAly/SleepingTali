#!/bin/bash
printf "Installing Yay bin \n" && sleep 1


pacman -Suy --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ../

notify-send "Done!" || printf "Done! \n";
