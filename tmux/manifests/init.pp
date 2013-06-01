class tmux {
  file {"$home/.tmux.conf":
    ensure => link,
    target => "$dotfiles_path/tmux/files/tmux.conf",
  }
}
