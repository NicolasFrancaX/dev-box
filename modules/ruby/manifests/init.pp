class ruby {
  class { 'chruby': }

  ruby::install { '2.0.0-p247': }

  file { "$home/.gemrc":
    ensure => link,
    target => "$modulepath/ruby/files/gemrc",
  }

  file { "$home/.pryrc":
    ensure => link,
    target => "$modulepath/ruby/files/pryrc",
  }
}
