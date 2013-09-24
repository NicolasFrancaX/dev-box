class ubuntu::repository_sources {
  ubuntu::ppa { 'chris-lea/node.js': }
  ubuntu::ppa { 'rwky/redis': }

  file { '/etc/apt/sources.list.d/pgdg.list':
    content => 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main',
  }

  exec { 'add Postgres key':
    command => 'wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -',
  }

  file { '/etc/apt/sources.list.d/mongodb.list':
    content => 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen',
  }

  exec  { 'add MongoDB key':
    command => 'apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10'
  }
}
