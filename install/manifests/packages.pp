class install::packages {
  package {'gvim':
    ensure => present,
  }
}
