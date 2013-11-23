class archlinux {
  if $operatingsystem == 'Archlinux' {
    class { 'packages': }
    class { 'services': }
    class { 'hosts':    }
    class { 'keyboard': }
  }
}
