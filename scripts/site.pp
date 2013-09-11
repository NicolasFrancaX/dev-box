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

$operatingsystem_downcase = $operatingsystem ? {
  archlinux => 'archlinux',
  ubuntu    => 'ubuntu',
}

# Stages declaration.

stage{ 'bootstrap':              } ->
stage{ 'add-repository-sources': } ->
stage{ 'update-packages':        } ->
stage{ 'installation':           } ->
stage{ 'configuration':          }

# Bootstrap Stage.

case $operatingsystem {
  ubuntu: {
    class { 'ubuntu::install_ppa_support':
      stage => 'bootstrap',
    }
  }
}

# Add Repository Sources Stage.

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

# Update Packages Stage.

class { "${operatingsystem_downcase}::update_packages":
  stage => update-packages,
}

# Installation Stage.

class { "${operatingsystem_downcase}::packages":
  stage => installation,
}

# Configuration Stage.

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
