#!/bin/bash

if [[ ! $(cat /etc/os-release 2>&1) =~ "Arch Linux" ]];then
  echo "This installation script is for Arch Linux [https://www.archlinux.org] only!"
  exit
fi

sudo bash <<SCRIPT
pacman -Syu
pacman -S git
SCRIPT

git clone git://github.com/leafac/dotfiles.git

(cd dotfiles && exec scripts/install.sh)
