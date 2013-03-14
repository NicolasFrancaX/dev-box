class ruby {

  file {"$home/.irbrc":
    ensure => link,
    target => "$basedir/ruby/files/irbrc",
  }

  file {"$home/.pryrc":
    ensure => link,
    target => "$basedir/ruby/files/pryrc",
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

  file {"$home/.rbenv/default-gems":
    ensure  => link,
    target  => "$basedir/ruby/files/default-gems",
    require => File["$home/.rbenv"],
  }

  file {"$home/.bundle":
    ensure => directory,
  }

  file {"$home/.bundle/config":
    ensure  => link,
    target  => "$basedir/ruby/files/bundle",
    require => File["$home/.bundle"],
  }
}
