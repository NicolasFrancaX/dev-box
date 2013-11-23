class archlinux::services {
  service { [
    'wicd',
    'ntpd',
  ]:
    ensure  => running,
    enable  => true,
    require => [Package['wicd'], Package['ntp']],
  }
}
