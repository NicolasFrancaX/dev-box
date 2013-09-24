class ubuntu::repository_sources {
  ubuntu::ppa { 'chris-lea/node.js': }
  ubuntu::ppa { 'rwky/redis': }

  ubuntu::source { 'postgres':
    sources         => 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main',
    add_key_command => 'wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -',
  }

  ubuntu::source { 'mongodb':
    sources         => 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen',
    add_key_command => 'apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10',
  }
}
