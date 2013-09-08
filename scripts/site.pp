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

# Bootstrap Stage.

stage { 'bootstrap': }

class update_packages {
  $command = $operatingsystem ? {
    archlinux => 'pacman -Sy --noconfirm',
    ubuntu    => 'apt-get update',
  }

  exec { 'update packages':
    command => $command,
    user    => 'root',
    group   => 'root',
  }
}

class { 'update_packages':
  stage => bootstrap,
}

# Installation Stage.

stage { 'installation':
  require => Stage['bootstrap'],
}

$operatingsystem_downcase = $operatingsystem ? {
  archlinux => 'archlinux',
  ubuntu    => 'ubuntu',
}

class { "packages::$operatingsystem_downcase":
  stage => installation,
}

# Configuration Stage.

stage { 'configuration':
  require => Stage['installation'],
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

case $operatingsystem {
  archlinux: {
    class { 'desktop':
      stage => configuration,
    }

    class { 'git':
      stage => configuration,
    }
  }

  ubuntu: {

  }
}
