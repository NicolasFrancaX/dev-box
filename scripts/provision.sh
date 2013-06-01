#!/bin/bash

# Starts the provisioning with Puppet.
#
# This script should be called in the first provisioning and
# after any changes are made to the configurations.

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

git submodule init
git submodule update

sudo env \
  FACTER_home="$HOME" \
  FACTER_user="$USER" \
  FACTER_basedir="$BASEDIR" \
  FACTER_tty=`tty` \
  puppet apply -e 'include site' \
               --modulepath "$BASEDIR"
