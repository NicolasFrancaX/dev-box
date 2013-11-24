class archlinux::services {
  service { [
    'wicd',
    'ntpd',
  ]:
    require => [Package['wicd'], Package['ntp']],
  }
}
