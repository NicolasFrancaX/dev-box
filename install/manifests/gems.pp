class install::gems {

  Package {
    provider => gem,
  }

  package {'bundler':}

  package {'wirble':}

  package {'pry':}
}
