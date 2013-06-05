class terminal {

  file {"$home/.oh-my-zsh":
    ensure => link,
    target => "$dotfiles_path/terminal/files/oh-my-zsh",
  }

  file {"$home/.zshrc":
    ensure => link,
    target => "$home/.oh-my-zsh/zshrc",
  }

  file {[
    "$home/.config",
    "$home/.config/xfce4",
    "$home/.config/xfce4/terminal",
  ]:
    ensure => directory,
  }

  file {"$home/.config/xfce4/terminal/terminalrc":
    ensure  => link,
    target  => "$dotfiles_path/terminal/files/terminalrc",
    require => File["$home/.config/xfce4/terminal"],
  }

  exec {"chsh -s /bin/zsh $user":
    require => Package['zsh'],
    unless  => 'echo "$SHELL" | grep -q "zsh"',
  }
}
