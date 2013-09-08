class git {
  file { "$home/.gitconfig":
    ensure => link,
    target => "$dev_box/git/files/config",
  }

  file { "$home/.gitignore":
    ensure => link,
    target => "$dev_box/git/files/ignore",
  }
}
