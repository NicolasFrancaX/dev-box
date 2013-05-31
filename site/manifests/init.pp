class site {

  class {'packages': }
  class {'services':
    require => Class['packages'],
  }

  class {'fonts':    }
  class {'git':      }
  class {'keyboard': }
  class {'ruby':     }
  class {'terminal': }
  class {'tmux':     }
  class {'vim':      }

  Package {
    ensure => present,
  }

  Service {
    ensure => running,
    enable => true,
  }

  Exec {
    path => [
      '/usr/local/bin',
      '/usr/bin',
      '/bin',
      '/usr/local/sbin',
      '/usr/sbin',
      '/sbin',
    ],
  }
}
