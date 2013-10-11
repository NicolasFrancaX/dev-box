class ubuntu::services {
  service { [
    'mongodb',
    'nginx',
    'redis-server',
    'postgresql',
  ]:
    ensure => stopped,
    enable => false,
  }
}
