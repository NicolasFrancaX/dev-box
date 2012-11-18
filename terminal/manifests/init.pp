class terminal {

  file {"$home/.oh-my-zsh":
    ensure => link,
    target => "$basedir/terminal/files/oh-my-zsh",
  }

  file {"$home/.config/Terminal/terminalrc":
    ensure => link,
    target => "$basedir/terminal/files/terminalrc",
  }
}
