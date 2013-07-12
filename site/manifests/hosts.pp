class site::hosts {
  exec { 'download hosts':
    command => 'wget -O /etc/hosts http://someonewhocares.org/hosts/hosts',
    user    => 'root',
    group   => 'root',
  }
}
