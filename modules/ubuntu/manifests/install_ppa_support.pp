class ubuntu::install_ppa_support {
  exec { 'update packages to install ppa support':
    command => 'apt-get update',
    user    => 'root',
    group   => 'root',
  }

  package { ['python-software-properties', 'build-essential']:
    require => Exec['update packages to install ppa support'],
  }
}
