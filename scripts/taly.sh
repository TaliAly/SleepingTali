############################
#
#   This is just for some
#   config things I normally
#   have on my arch.
#
############################

sudo journalctl --vacuum-size=50M

sudo pacman -Suy --noconfirm --needed fish ncdu

chsh $USER -s /bin/fish/ || printf "\n try it yourself, sorry \n"; chsh -l