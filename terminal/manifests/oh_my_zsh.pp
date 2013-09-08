class terminal::oh_my_zsh {
  $path = "$home/.oh-my-zsh"

  exec { 'install oh-my-zsh':
    command => "git clone git://github.com/leafac/oh-my-zsh.git $path",
    creates => $path,
  }

  file { "$home/.zshrc":
    ensure  => link,
    target  => "$home/.oh-my-zsh/zshrc",
    require => Exec['install oh-my-zsh'],
  }
}
