class ruby {

  file {"$home/.irbrc":
    ensure => link,
    target => "$basedir/ruby/files/irbrc",
  }

  file {"$home/.gemrc":
    ensure => link,
    target => "$basedir/ruby/files/gemrc",
  }

  file {"$home/.rbenv":
    ensure => link,
    target => "$basedir/ruby/files/rbenv",
  }

  file {"$home/.rbenv/plugins":
    ensure  => link,
    target  => "$basedir/ruby/files/rbenv-plugins",
    require => File["$home/.rbenv"],
  }
}
