#!/bin/bash

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo \
  FACTER_home="$HOME" \
  FACTER_user="$USER" \
  FACTER_basedir="$BASEDIR" \
  FACTER_tty=`tty` \
  puppet apply -e 'include install' --modulepath $BASEDIR
