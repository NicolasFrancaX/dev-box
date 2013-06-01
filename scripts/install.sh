#!/bin/bash

sudo bash <<SCRIPT
echo -e "\n[archlinuxfr]\nSigLevel = Never\nServer = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
pacman -Sy
pacman -S ruby yaourt
gem install puppet
SCRIPT

export PATH="/root/.gem/ruby/2.0.0/bin:$PATH"

exec scripts/provision.sh
