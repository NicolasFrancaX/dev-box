class keyboard {

  file {"$home/.Xmodmap":
    ensure => link,
    target => "$dotfiles_path/keyboard/files/Xmodmap",
  }
}
