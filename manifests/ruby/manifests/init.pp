class ruby {
  if $operatingsystem == 'Ubuntu' {
    class { 'chruby': }

    ruby::install { '2.0.0-p247':
      gems => 'bundler pry pry-debugger pry-nav foreman procfile-upstart-exporter qwandry',
    }

    file { "$home/.gemrc":
      ensure => link,
      target => "$modulepath/ruby/files/gemrc",
    }

    file { "$home/.pryrc":
      ensure => link,
      target => "$modulepath/ruby/files/pryrc",
    }

    # Curb dependency.
    package { 'libcurl4-openssl-dev': }

    # Summarize dependencies.
    package { [
      'libxml2-dev',
      'libglib2.0-dev',
    ]: }

    # MiniMagick dependency.
    package { 'imagemagick': }
  }
}
