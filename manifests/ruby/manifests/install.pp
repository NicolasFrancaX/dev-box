define ruby::install(
  $ruby    = 'ruby',
  $version = $title,
  $gems    = false,
) {
  exec { "install Ruby `$version'":
    command => $command,
    creates => "/opt/rubies/$ruby-$version",
    user    => 'root',
    group   => 'root',
    timeout => 0,
    require => Class['ruby::chruby'],
  }

  if $gems {
    $command = "ruby-install $ruby $version && chruby-exec $ruby $version -- gem install $gems"
  }
  else {
    $command = "ruby-install $ruby $version"
  }
}
