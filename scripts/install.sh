#!/bin/bash

# Install the bare minimum to bootstrap and start the first provisioning.
#
# This script should run only once for OS installation.
#
# Pre-requisites:
#
# - Arch Linux
# - Xfce
# - SLiM
# - `sudo`
# - Regular user with sudoer permission

function main {
  install_yaourt
  install_puppet
  add_puppet_to_path
  call_first_provisioning
}

function install_yaourt {
sudo bash <<SCRIPT

cat >> /etc/pacman.conf << "YAOURT_REPOSITORY"
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/\$arch
YAOURT_REPOSITORY

pacman -Sy
pacman -S yaourt
SCRIPT
}

function install_puppet {
sudo bash <<SCRIPT
pacman -S ruby
gem install puppet
SCRIPT
}

function add_puppet_to_path {
  export PATH="/root/.gem/ruby/2.0.0/bin:$PATH"
}

function call_first_provisioning {
  exec scripts/provision.sh
}

main
