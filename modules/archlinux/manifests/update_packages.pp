class archlinux::update_packages {
  exec { 'update packages':
    command => 'pacman -Sy --noconfirm',
    user    => 'root',
    group   => 'root',
  }
}
