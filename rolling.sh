# !bin/bash

echo 'lets get over it'

sudo pacman -Sy && sudo pacman -Syu
sudo pacman -S git go && sleep 1
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si && echo 'yay was installed!'

# now we have this I guess we can make folders

mkdir $HOME/Downloads
mkdir $HOME/Images
mkdir $HOME/Documents
mkdir $HOME/Videos

# * since yay is installed time to download some fonts for the pc!

yay -Sy noto-fonts-emoji siji-git ttf-unifont
sudo pacman -Sy ttf-fira-code ttf-jetbrains-mono ttf-hack ranger htop ncdu feh

#* time to go for the visual enviroment!
#* this are the apps for the pc to normally use

echo "time to go for the normal apps"

sudo pacman -S nitrogen firefox rofi picom alacritty nemo dunst xorg-xinit leafpad ffmpegthumbnailer unzip zip unrar fish
chsh -s /bin/fish

#* if the system doesn't have installed bluetooth, this will install it

sudo pacman -S bluez bluez-utils blueman pulseaudio-bluetooth pulseaudio-alsa

sudo systemctl enable bluetooth.service

#* this is for the keyrings or to enable the login platforms

yay -S qtkeychain gnome-keyring

#* and this is the window manager on use
yay -S i3-gaps-rounded-git && echo "i3 was installed"

cp xinit $HOME/.xinitrc
#! checked

mkdir $HOME/.config/i3
cp i3conf $HOME/.config/i3/config
#! checked

mkdir $HOME/.config/dunst
cp dunstconf $HOME/.config/dunst/dunstrc
#! checked

mkdir $HOME/.config/alacritty/
cp alacritty.yml $HOME/.config/alacritty/
#! checked

mkdir $HOME/.config/polybar
cp config $HOME/.config/polybar/config
