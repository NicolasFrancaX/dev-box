class vim {
  file { "$home/.vim":
    ensure => link,
    target => "$dev_box/vim/files",
  }

  file { "$home/.vimrc":
    ensure  => link,
    target  => "$home/.vim/config/main.vim",
    require => File["$home/.vim"],
  }

  class { 'vundle':
    require => File["$home/.vimrc"],
  }
}
