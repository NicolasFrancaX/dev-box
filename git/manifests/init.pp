class git {
  file { "$home/.gitconfig":
    ensure => link,
    target => "$dotfiles/git/files/config",
  }

  file { "$home/.gitignore":
    ensure => link,
    target => "$dotfiles/git/files/ignore",
  }
}
