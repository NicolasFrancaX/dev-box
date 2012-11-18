class fonts {

  # Patched Droid fonts from https://gist.github.com/2324335 for vim-powerline

  file {"$home/.fonts":
    ensure => link,
    target => "$basedir/fonts/files",
  }
}
