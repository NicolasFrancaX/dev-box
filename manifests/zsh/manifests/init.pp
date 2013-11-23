class zsh {
  class { 'oh_my_zsh': }

  user { $user:
    shell => '/bin/zsh',
  }
}
