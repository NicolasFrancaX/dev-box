class redis {
  if $operatingsystem == 'Ubuntu' {
    ubuntu::ppa { 'rwky/redis':
      creates => '/usr/bin/redis-cli',
    }

    package { 'redis-server':
      require => Ubuntu::Ppa['rwky/redis'],
    }

    service { 'redis-server':
      require => Package['redis-server'],
    }
  }
}
