class vim {
  file { "$home/.vim":
    ensure => link,
    target => "$dotfiles/vim/files",
  }

  file { "$home/.vimrc":
    ensure  => link,
    target  => "$home/.vim/config/main.vim",
    require => File["$home/.vim"],
  }

  class { 'vundle':
    require => File["$home/.vim"],
  }
}
