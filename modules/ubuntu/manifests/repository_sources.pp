class ubuntu::repository_sources {
  ubuntu::ppa { 'chris-lea/node.js': }

  file { '/etc/apt/sources.list.d/pgdg.list':
    content => 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main',
  }

  exec { 'add Postgres key':
    command => 'wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -',
    require => File['/etc/apt/sources.list.d/pgdg.list'],
  }
}
