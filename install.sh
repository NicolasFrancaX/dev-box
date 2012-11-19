#!/bin/bash

if [[ ! $(cat /etc/os-release 2>&1) =~ "Arch Linux" ]];then
  echo "This installation script is for Arch Linux [https://www.archlinux.org] only!"
  exit
fi

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

if ruby --version > /dev/null 2>&1; then
  echo 'Ruby: ok'
else
  echo 'Installing Ruby'

  sudo pacman -S ruby
fi

if sudo puppet --version > /dev/null 2>&1; then
  echo 'Puppet: ok'
else
  echo 'Installing Puppet'

  sudo sh <<SCRIPT
    gem install puppet
    groupadd puppet
SCRIPT

  export PATH="/root/.gem/ruby/1.9.1/bin:$PATH"
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
  puppet apply -e 'include install' --modulepath "$PWD"

echo
echo 'The end!'
echo
