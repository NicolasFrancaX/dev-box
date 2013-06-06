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
    "$home/.config/Terminal",
  ]:
    ensure => directory,
  }

  file {"$home/.config/Terminal/terminalrc":
    ensure  => present,
    source  => 'puppet:///modules/terminal/terminalrc',
    replace => true,
    require => File["$home/.config/Terminal"],
  }

  exec {"chsh -s /bin/zsh $user":
    require => Package['zsh'],
    unless  => 'echo "$SHELL" | grep -q "zsh"',
  }
}
