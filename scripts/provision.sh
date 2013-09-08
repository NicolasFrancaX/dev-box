#!/bin/bash

# Starts the provisioning with Puppet.
#
# This script should be called in the first provisioning and
# after any changes are made to the configurations.

DEV_BOX="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

sudo env \
  FACTER_home="$HOME" \
  FACTER_user="$USER" \
  FACTER_dev_box="$DEV_BOX" \
  FACTER_tty=`tty` \
  puppet apply scripts/site.pp --modulepath "$DEV_BOX"
