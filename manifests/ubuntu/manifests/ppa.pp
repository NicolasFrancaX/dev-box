define system::ppa(
  $identifier = $title,
  $creates,
) {
  exec { "add ppa $identifier":
    command => "add-apt-repository --yes ppa:$identifier && apt-get --yes update",
    user    => 'root',
    group   => 'root',
    creates => $creates,
  }
}
