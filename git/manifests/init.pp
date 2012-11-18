class git {

  file {"$home/.gitconfig":
    ensure  => present,
    content => template('git/config.erb'),
  }
}
