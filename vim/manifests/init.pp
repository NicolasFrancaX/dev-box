class vim {


  file {"$home/.vim":
    ensure => link,
    target => "$basedir/vim/files",
  }

  file {"$home/.vimrc":
    ensure  => link,
    target  => "$home/.vim/config/main.vim",
    require => File["$home/.vim"],
  }

  exec {"sudo -u $user vim -u $home/.vim/config/plugins/vundle.vim +BundleInstall +qa < $tty > $tty":
    require => File["$home/.vim"],
  }
}
