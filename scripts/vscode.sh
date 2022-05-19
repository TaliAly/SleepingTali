#!/bin/bash


printf "Installing Vscode \n" && sleep 1

sudo pacman -S --needed --noconfirm gnome-keyring

printf "now Yay will run \n"
yay --needed --cleanafter --noconfirm visual-studio-code-bin icu69-bin || printf "Nothing to do"

notify-send "Done!" || printf "Done! \n"
