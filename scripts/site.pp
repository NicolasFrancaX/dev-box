# Entry point for provisioning.

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

# Pre-install stage.

stage { 'preinstall':
  before => Stage['main'],
}

class { 'git::submodules':
  stage => preinstall,
}

# Main stage.

class { 'git':        }
class { 'machine':    }
class { 'terminal':   }
class { 'tmux':       }
class { 'vim':        }
class { 'virtualbox': }
