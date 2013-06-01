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

sudo bash <<SCRIPT
echo -e "\n[archlinuxfr]\nSigLevel = Never\nServer = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
pacman -Sy
pacman -S git ruby yaourt
gem install puppet
SCRIPT

export PATH="/root/.gem/ruby/2.0.0/bin:$PATH"

exec scripts/provision.sh
