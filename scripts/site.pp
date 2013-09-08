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

# Main stage.

class { 'git':        }
class { 'machine':    }
class { 'terminal':
  require => Class['machine::packages'],
}
class { 'tmux':
  require => Class['machine::packages'],
}
class { 'vim':
  require => Class['machine::packages'],
}
class { 'virtualbox':
  require => Class['machine::packages'],
}
