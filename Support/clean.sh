#!/bin/bash
# -*- ENCODING: UTF-8 -*-
echo "Starting Point"


# update everything :]
echo "actualizando cosas!"
sudo pacman -Suy --noconfirm
yay -Suy --noconfirm --cleanafter


# clean cache
echo "Verificando cache en pacman"
sudo pacman -Scc --noconfirm

# Remove Orphans 
echo "Verificando paquetes huerfanos"
sudo pacman -Rcns $(pacman -Qtdq) --noconfirm
echo "Paquetes huerfanos eliminados" && sleep 2

# Remove pkgbuilds & cache
echo "Verificando pkgbuilds existentes"
yay -Sc --noconfirm && yay -yc --noconfirm
echo "Pkgbuild eliminadas" && sleep 2

# clean cache from arch
echo "Verificando cache"
du -sh .cache
rm -rf .cache/*
echo "Cache eliminada" && sleep 2

notify-send "Done!" || echo "Mantenimiento completado."
