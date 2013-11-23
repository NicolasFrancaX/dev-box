class nodejs {
  if $operatingsystem == 'Ubuntu' {
    ubuntu::ppa { 'chris-lea/node.js':
      creates => '/usr/bin/node',
    }

    package { 'nodejs':
      require => Ubuntu::Ppa['chris-lea/node.js'],
    }
  }
}
