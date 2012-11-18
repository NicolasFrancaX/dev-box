class terminal {

  file {"$home/.oh-my-zsh":
    ensure => link,
    target => "$basedir/terminal/files/oh-my-zsh",
  }
}
