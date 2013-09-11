class ubuntu::update_packages {
  exec { 'update packages':
    command => 'apt-get update',
    user    => 'root',
    group   => 'root',
  }
}
