class ubuntu::packages {
  package { [
    # Text editor.

    'vim',

    # Command line tools.

    'tmux',
    'zsh',

    # Programming languages.

    'nodejs',

    # Databases.

    'postgresql-client-9.3',
    'postgresql-9.3',
    'postgresql-contrib-9.3',
    'libpq-dev',
    'postgresql-server-dev-9.3',
  ]: }
}
