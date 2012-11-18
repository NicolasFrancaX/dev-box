class install::gems {
  Package {
    provider => gem,
  }

  package {'bundler':
    ensure => present,
  }

  package {'wirble':
    ensure => present,
  }

  package {'pry':
    ensure => present,
  }
}
