sudo pacman -Suy

# o
mkdir ~/Downloads
mkdir ~/Images
mkdir ~/Videos
mkdir ~/Projects

sleep 1
echo "the main folders were made"
sleep 2

# again o?

## yay!  bin

pacman -Sy --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

sudo pacman -Sy --needed fish
chsh $USER -s /bin/fish

sleep 1
echo "You have installed fish!"
sleep 1

sudo pacman -Sy --needed noto-fonts-emoji ttf-droid htop ranger feh

## it's time for the window manager!

sleep 1 && echo "some apps right? :>" && sleep 1

sudo pacman -Sy --needed rofi picom alacritty nemo dunst xorg-xinit ffmpegthumbnailer unzip zip unrar
yay -S microsoft-edge-stable-bin

sleep 1 && echo "just wanted to let you know I'm going to install the i3-gaps" sleep 1

sudo pacman -Sy --needed i3-gaps i3blocks pfetch-btw

## now for the things about the install, I mean, the normal, I mean-

## the .dotfiles

cp xinitrc ~/.xinitrc

mkdir ~/.config/i3 && cp i3conf ~/.config/i3/config

mkdir ~/.config/dunst && cp dunstconf ~/.config/dunst/dunstrc