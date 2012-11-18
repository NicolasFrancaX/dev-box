class tmux {

  file {"$home/.tmux.conf":
    ensure => link,
    target => "$basedir/tmux/files/tmux.conf",
  }
}
