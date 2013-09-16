class ubuntu::install_ppa_support {
  exec { "apt-get update for `python-software-properties'":
    command => 'apt-get update',
    creates => '/usr/bin/apt-add-repository',
    user    => 'root',
    group   => 'root',
  }

  package { 'python-software-properties':
    require => Exec["apt-get update for `python-software-properties'"],
  }
}
