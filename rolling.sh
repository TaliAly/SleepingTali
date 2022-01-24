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

# this are the apps for the pc to nromally use
sudo pacman -S nitrogen firefox rofi picom alacritty nemo dunst xorg-xinit leafpad
# if the system doesn't have installed bluetooth, this will install it 
sudo pacman -S bluez bluez-utils blueman
# this is for the keyrings or to enable the login platforms
yay -S qtkeychain gnome-keyring
# and this is the window manager on use
yay -S i3-gaps-rounded-git && echo "i3 was installed"
cp xinit $HOME/.xinitrc
mkdir $HOME/.config/i3
cp i3conf $HOME/.config/i3/config
mkdir $HOME/.config/dunst
cp dunstconf $HOME/.config/dunst/dunstrc
mkdir $HOME/.config/alacritty/
cp alacritty.yml $HOME/.config/alacritty/