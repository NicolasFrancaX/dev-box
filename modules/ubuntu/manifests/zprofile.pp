class ubuntu::zprofile {
  file { '/etc/zsh/zprofile':
    ensure => link,
    target => "$modulepath/ubuntu/files/zprofile",
  }
}
