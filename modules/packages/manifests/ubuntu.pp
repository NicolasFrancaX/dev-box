class packages::ubuntu {
  package { [
    # Text editor.

    'vim',

    # Command line tools.

    'tmux',
    'zsh',

    # Programming languages.

    'nodejs',
  ]: }
}
