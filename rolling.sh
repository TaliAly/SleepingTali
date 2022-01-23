# !bin/bash

echo 'lets get over it'

sudo pacman -Sy && sudo pacman -Syu
sudo pacman -S git go && sleep 1
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si && echo 'yay was installed!'

# now yay should be installed so I can just do this:

yay -Sy noto-fonts-emoji
sudo pacman -S ttf-fira-code ttf-fantasque-sans-mono ranger htop ncdu feh
# now lets get to the window manager
## starting with the apps

# lets go for the visual thing shall we?

sudo pacman -S nitrogen firefox rofi picom alacritty nemo dunst xorg-xinit
yay -S i3-gaps-rounded-git && echo "i3 was installed"
cp xinit $HOME/.xinitrc
mkdir $HOME/.config/i3
cp i3conf $HOME/.config/i3/config
mkdir $HOME/.config/dunst
cp dunstconf $HOME/.config/dunst/dunstrc
mkdir $HOME/.config/alacritty/
cp alacritty.yml $HOME/.config/alacritty/