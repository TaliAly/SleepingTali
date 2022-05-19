#!/bin/bash

printf "This script was made for Arch Linux, if you're using other distro please be careful! \n" && sleep 2
clear

printf "Here is the options:
    vs|VS) Install Vscode
    i3|I3) Install I3
    else|exit) Exit
    \n"

read -p "What do you want to do? " res

case $res in  
  i3|I3) sh ./scripts/i3.sh ;;
  vs|VS) sh ./scripts/vscode.sh ;;
  exit|*) echo "exiting"; exit ;; 
esac