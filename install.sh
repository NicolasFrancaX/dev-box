#!/bin/bash

yaourt --version > /dev/null 2>&1 || {

cat <<ErrorMessage
You need yaourt to install dotfiles.

To install it, run the following as root:

  # echo -e "\\n[archlinuxfr]\\nServer = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
  # pacman -Syu
  # pacman -S yaourt
ErrorMessage

exit

}

puppet --version > /dev/null 2>&1 || {

cat <<ErrorMessage
You need Puppet to install dotfiles.

To install it, run the following:

  $ yaourt -S ruby-puppet --noconfirm
ErrorMessage

exit

}

git --version > /dev/null 2>&1 || {

cat <<ErrorMessage
You need git to install dotfiles.

To install it, run the following as root:

  # pacman -S git
ErrorMessage

exit

}

echo 'Updating git submodules'

git submodule init
git submodule update

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo 'Starting install with Puppet'

sudo \
  FACTER_home="$HOME" \
  FACTER_user="$USER" \
  FACTER_basedir="$BASEDIR" \
  FACTER_tty=`tty` \
  puppet apply -e 'include install' --modulepath $BASEDIR
