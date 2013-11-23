class ubuntu::locale {
  file { '/etc/default/locale':
    content => "LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8",
    owner   => 'root',
    group   => 'root',
  }
}
