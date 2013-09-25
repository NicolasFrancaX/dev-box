class ubuntu::repository_sources {
  ubuntu::ppa { 'chris-lea/node.js': }
  ubuntu::ppa { 'rwky/redis': }

  ubuntu::source { 'postgres':
    sources => 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main',
    key_url => 'https://www.postgresql.org/media/keys/ACCC4CF8.asc',
  }

  ubuntu::source { 'mongodb':
    sources                => 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen',
    custom_add_key_command => 'apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10',
  }

  ubuntu::source { 'nginx':
    sources         => "deb http://nginx.org/packages/ubuntu/ precise nginx\ndeb-src http://nginx.org/packages/ubuntu/ precise nginx",
    key_url => 'http://nginx.org/keys/nginx_signing.key',
  }
}
