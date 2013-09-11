define ubuntu::ppa {
  exec { "add ppa $title":
    command => "add-apt-repository --yes ppa:$title",
    user    => 'root',
    group   => 'root',
  }
}
