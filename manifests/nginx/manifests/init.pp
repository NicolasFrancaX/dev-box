class nginx {
  if $operatingsystem == 'Ubuntu' {
    ubuntu::source { 'nginx':
      sources => 'deb http://nginx.org/packages/ubuntu/ precise nginx\ndeb-src http://nginx.org/packages/ubuntu/ precise nginx',
      key_url => 'http://nginx.org/keys/nginx_signing.key',
      creates => '/etc/init.d/nginx',
    }

    package { 'nginx':
      require => Ubuntu::Source['nginx'],
    }

    service { 'nginx':
      require => Package['nginx'],
    }
  }
}
