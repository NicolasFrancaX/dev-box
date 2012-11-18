#!/bin/bash

echo
echo 'Checking pre-requisites'
echo

if git --version > /dev/null 2>&1; then
  echo 'Git: ok'
else
  echo 'Installing Git'

  sudo pacman -S git
fi

if yaourt --version > /dev/null 2>&1; then
  echo 'Yaourt: ok'
else
  echo 'Installing Yaourt'

  sudo sh <<SCRIPT
    echo -e "\n[archlinuxfr]\nServer = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
    pacman -Syu
    pacman -S yaourt
SCRIPT

fi

if puppet --version > /dev/null 2>&1; then
  echo 'Puppet: ok'
else
  echo 'Installing Puppet'

  yaourt -S ruby-puppet --noconfirm
fi

echo
echo 'Cloning dotfiles'
echo

if [ "${PWD##*/}" != "dotfiles" ]; then
  git clone git://github.com/leafac/dotfiles.git
  cd dotfiles
else
  echo 'No need to clone dotfiles'
fi

echo
echo 'Updating git submodules'
echo

git submodule init
git submodule update

echo
echo 'Installing with Puppet'
echo

sudo \
  FACTER_home="$HOME" \
  FACTER_user="$USER" \
  FACTER_basedir="$PWD" \
  FACTER_tty=`tty` \
  puppet apply -e 'include install' --modulepath $PWD

echo
echo 'The end!'
echo
