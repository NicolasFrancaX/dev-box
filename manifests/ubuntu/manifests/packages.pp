class ubuntu::packages {
  package { [
    # Text editor.

    'vim',

    # Command line tools.

    'tmux',
    'zsh',
  ]:
    require => Class['ubuntu::install_ppa_support'],
  }
}
