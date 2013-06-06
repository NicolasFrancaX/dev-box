class tmux {
  file {"$home/.tmux":
    ensure => link,
    target => "$dotfiles_path/tmux/files",
  }

  file {"$home/.tmux.conf":
    ensure  => link,
    target  => "$home/.tmux/tmux.conf",
    require => File["$home/.tmux"],
  }
}
