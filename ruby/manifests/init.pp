class ruby {

  file {"$home/.irbrc":
    ensure => link,
    target => "$basedir/ruby/files/irbrc",
  }

  file {"$home/.gemrc":
    ensure => link,
    target => "$basedir/ruby/files/gemrc",
  }
}
