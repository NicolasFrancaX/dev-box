class zsh::oh_my_zsh {
  git::clone { 'oh-my-zsh':
    repository => 'git://github.com/leafac/oh-my-zsh.git',
    path       => "$modulepath/zsh/files",
  }

  file { "$home/.oh-my-zsh":
    ensure => link,
    target => "$modulepath/zsh/files",
    require => Git::Clone['oh-my-zsh'],
  }

  file { "$home/.zshrc":
    ensure  => link,
    target  => "$home/.oh-my-zsh/zshrc",
    require => File["$home/.oh-my-zsh"],
  }
}
