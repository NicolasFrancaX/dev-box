class install::packages {
  package {'gvim':
    ensure => installed,
  }
}
