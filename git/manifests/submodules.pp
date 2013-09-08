class git::submodules {
  exec { 'git submodule init': } ->
  exec { 'git submodule update': }
}
