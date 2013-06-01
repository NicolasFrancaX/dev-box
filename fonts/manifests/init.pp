class fonts {

  # Patched Droid fonts from https://gist.github.com/2324335 for vim-powerline

  file {"$home/.fonts":
    ensure => link,
    target => "$dotfiles_path/fonts/files",
  }
}
