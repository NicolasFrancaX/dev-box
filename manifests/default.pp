# Entry point for Puppet provisioning catalog.

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
    '/sbin',
    '/bin',
    '/usr/sbin',
    '/usr/local/sbin',
    '/usr/bin',
    '/usr/local/bin',
  ],
  user  => $user,
  group => $group,
}

File {
  ensure => present,
  owner  => $user,
  group  => $group,
}

# Pre-install Stage.

stage { 'preinstall':
  before => Stage['main'],
}

class { $operatingsystem ? {
    archlinux => 'archlinux',
    ubuntu    => 'ubuntu',
  }:
  stage => 'preinstall',
}

# Main Stage.

