class postgresql {
  if $operatingsystem == 'Ubuntu' {
    ubuntu::source { 'postgres':
      sources => 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main',
      key_url => 'https://www.postgresql.org/media/keys/ACCC4CF8.asc',
      creates => '/usr/bin/psql',
    }

    package { [
      'postgresql-9.3',
      'postgresql-client-9.3',
      'postgresql-contrib-9.3',
      'postgresql-server-dev-9.3',
      'libpq-dev',
    ]:
      require => Ubuntu::Source['postgres'],
    }

    service { 'postgresql':
      require => Package['postgresql-9.3'],
    }
  }
}
