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
    '/usr/local/bin',
    '/usr/bin',
    '/bin',
    '/usr/local/sbin',
    '/usr/sbin',
    '/sbin',
  ],
  user  => $user,
  group => $group,
}

File {
  ensure => present,
  owner  => $user,
  group  => $group,
}

# Installation Stage.

stage { 'installation': }

class { 'packages::arch':
  stage => installation,
}

# Configuration Stage.

stage { 'configuration':
  require => Stage['installation'],
}

class { 'desktop':
  stage => configuration,
}

class { 'git':
  stage => configuration,
}

class { 'tmux':
  stage => configuration,
}

class { 'vim':
  stage => configuration,
}

class { 'zsh':
  stage => configuration,
}
