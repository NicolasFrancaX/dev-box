class archlinux::hosts {
  exec { 'download safer /etc/hosts':
    command => 'wget -O /etc/hosts http://someonewhocares.org/hosts/hosts',
    user    => 'root',
    group   => 'root',
    unless  => "grep -q 'http://someonewhocares.org/hosts/' /etc/hosts",
  }
}
