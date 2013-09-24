class ruby {
  class { 'chruby': }

  file { "$home/.gemrc":
    ensure => link,
    target => "$modulepath/ruby/files/gemrc",
  }

  file { "$home/.pryrc":
    ensure => link,
    target => "$modulepath/ruby/files/pryrc",
  }

  ruby::install { 'ruby-2.0.0-p247':
    require => Class['chruby'],
  }
}
