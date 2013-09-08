class machine {
  class { 'packages': }
  class { 'hosts':
    require => Class['packages'],
  }
  class { 'services':
    require => Class['packages'],
  }
  class { 'keyboard': }
}
