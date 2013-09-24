class ubuntu::services {
  Service {
    ensure => stopped,
    enable => false,
  }

  service { [
    'mongodb',
    'nginx',
    'redis-server',
    'postgresql',
    'memcached',
  ]: }
}
