#!/bin/bash

# Starts the provisioning with Puppet.
#
# This script should be called in the first provisioning and
# after any changes are made to the configurations.

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

sudo env \
  FACTER_home="$HOME" \
  FACTER_user="$USER" \
  FACTER_dotfiles="$DOTFILES" \
  FACTER_tty=`tty` \
  puppet apply scripts/site.pp --modulepath "$DOTFILES"
