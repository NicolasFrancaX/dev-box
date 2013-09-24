define ruby::install($version = $title) {
  exec { "install ruby `$version'":
    command => "ruby-install $version",
    creates => "/opt/rubies/$version",
    user    => 'root',
    group   => 'root',
    timeout => 0,
  }
}
