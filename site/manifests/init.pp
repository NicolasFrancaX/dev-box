class site {

  class {'packages': }
  class {'services':
    require => Class['packages'],
  }
  class {'virtualbox': }

  class {'git':      }
  class {'keyboard': }
  class {'ruby':     }
  class {'terminal': }
  class {'tmux':     }
  class {'vim':      }
  class {'hosts':    }

  Package {
    ensure => present,
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
    owner => $user,
    group => 'users',
  }
}
