# Arch Linux desktop.
#
# Pre-requisites:
#
# - Arch Linux installed with `base` and `base-devel` package groups.
# - Xfce.
# - SLiM.

# General Puppet configuration.

Package {
  ensure => installed,
}

Service {
  ensure => running,
  enable => true,
}

Exec {
  path  => [
    '/usr/local/bin',
    '/usr/bin',
    '/bin',
    '/usr/local/sbin',
    '/usr/sbin',
    '/sbin',
  ],
  user  => $user,
  group => 'users',
}

File {
  ensure => present,
  owner  => $user,
  group  => 'users',
}

# Main stage.

class { 'git':     }
class { 'machine': }

# Configuration stage.

stage { 'configuration':
  require => Stage['main'],
}

class { 'terminal':
  stage => configuration,
}

class { 'tmux':
  stage => configuration,
}

class { 'vim':
  stage => configuration,
}

class { 'virtualbox':
  stage => configuration,
}
