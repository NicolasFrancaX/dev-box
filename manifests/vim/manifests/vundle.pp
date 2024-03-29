class vim::vundle {
  git::clone { 'vundle':
    repository => 'git://github.com/gmarik/vundle.git',
    path       => "$home/.vim/bundle/vundle",
  }

  if $tty {
    exec { "update Vim plugins":
      command => "sudo -u $user vim -u $home/.vim/config/plugins/vundle.vim +BundleInstall +qa < $tty > $tty",
      require => Git::Clone['vundle'],
    }
  }
}
