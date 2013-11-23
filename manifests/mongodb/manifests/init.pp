class mongodb {
  if $operatingsystem == 'Ubuntu' {
    ubuntu::source { 'mongodb':
      sources                => 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen',
      custom_add_key_command => 'apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10',
      creates                => '/etc/init.d/mongodb',
    }

    package { 'mongodb-10gen':
      require => Ubuntu::Source['mongodb'],
    }

    service { 'mongodb':
      require => Package['mongodb-10gen'],
    }
  }
}
