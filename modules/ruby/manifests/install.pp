define ruby::install(
  $ruby    = 'ruby',
  $version = $title,
) {
  exec { "install Ruby `$version'":
    command => "ruby-install $ruby $version",
    creates => "/opt/rubies/$ruby-$version",
    user    => 'root',
    group   => 'root',
    timeout => 0,
    require => Class['ruby::chruby'],
  }
}
