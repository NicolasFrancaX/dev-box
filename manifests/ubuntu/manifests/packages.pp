class ubuntu::packages {
  package { [
    # Text editor.

    'vim',

    # Command line tools.

    'tmux',
    'zsh',

    # Web server.

    'nginx',
  ]:
    require => Class['ubuntu::install_ppa_support'],
  }
}
