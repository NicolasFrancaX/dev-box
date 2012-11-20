class keyboard {

  file {"$home/.Xmodmap":
    ensure => link,
    target => "$basedir/keyboard/files/Xmodmap",
  }
}
