class vim::vundle {
  $path = "$home/.vim/bundle/vundle"

  exec { "install vundle":
    command => "git clone git://github.com/gmarik/vundle.git $path",
    creates => $path,
  }

  exec { "Update vim plugins":
    command => "sudo -u $user vim -u $home/.vim/config/plugins/vundle.vim +BundleInstall +qa < $tty > $tty",
    require => Exec['install vundle'],
  }
}
