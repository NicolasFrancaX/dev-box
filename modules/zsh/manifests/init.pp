class zsh {
  git::clone { 'install oh-my-zsh':
    repository => 'git://github.com/leafac/oh-my-zsh.git',
    path       => "$home/.oh-my-zsh",
  }

  file { "$home/.zshrc":
    ensure  => link,
    target  => "$home/.oh-my-zsh/zshrc",
    require => Git::Clone['install oh-my-zsh'],
  }

  exec { "change default shell for $user to zsh":
    command => "chsh -s /bin/zsh $user",
    require => Package['zsh'],
    unless  => 'echo "$SHELL" | grep -q "zsh"',
    user    => 'root',
    group   => 'root',
  }
}
