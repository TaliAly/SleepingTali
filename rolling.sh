read -n1 -p "You want to install everything? It will take a long time" doit 
case $doit in  
  y|Y) echo yes ;; 
  n|N) exit ;; 
  *) echo I can\'t recognize that, so I will cancel it ;; 
esac

sudo pacman -Suy

# o
mkdir ~/Downloads
mkdir ~/Images
mkdir ~/Videos
mkdir ~/Projects
cp -R ./Support/ ~/Support

sleep 1 && echo "the main folders were made"

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

sudo pacman -Suy --needed noto-fonts-emoji ttf-droid htop ranger feh

## it's time for the window manager!

sleep 1
echo """some apps right? :>
"""
sleep 1

sudo pacman -Suy --needed rofi picom alacritty nemo dunst xorg-xinit ffmpegthumbnailer unzip zip unrar
yay -S microsoft-edge-stable-bin

sleep 1 && echo "just wanted to let you know I'm going to install the i3-gaps" sleep 1

sudo pacman -Suy --needed i3-gaps i3blocks

## now for the things about the install, I mean, the normal, I mean-

## the .dotfiles

cp xinitrc ~/.xinitrc

mkdir ~/.config/i3 && cp i3conf ~/.config/i3/config

mkdir ~/.config/dunst && cp dunstconf ~/.config/dunst/dunstrc
