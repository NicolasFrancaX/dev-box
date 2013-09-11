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


stage { 'bootstrap': }

class install_ppa_support {
  package { 'python-software-properties': }
}

case $operatingsystem {
  ubuntu: {
    class { 'install_ppa_support':
      stage => 'bootstrap',
    }
  }
}

stage { 'add-repository-sources':
  require => Stage['bootstrap'],
}

class add_repository_sources {
  ubuntu::ppa { 'chris-lea/node.js': }
}

case $operatingsystem {
  ubuntu: {
    class { 'add_repository_sources':
      stage => 'add-repository-sources',
    }
  }
}

stage { 'update-packages':
  require => Stage['add-repository-sources'],
}

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
  stage => update-packages,
}

stage { 'installation':
  require => Stage['update-packages'],
}

$operatingsystem_downcase = $operatingsystem ? {
  archlinux => 'archlinux',
  ubuntu    => 'ubuntu',
}

class { "packages::$operatingsystem_downcase":
  stage => installation,
}

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
