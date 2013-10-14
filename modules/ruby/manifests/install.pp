define ruby::install(
  $ruby    = 'ruby',
  $version = $title,
  $gems    = false,
) {
  exec { "install Ruby `$version'":
    command => "ruby-install $ruby $version",
    creates => "/opt/rubies/$ruby-$version",
    user    => 'root',
    group   => 'root',
    timeout => 0,
    require => Class['ruby::chruby'],
  }

  if $gems {
    exec { "install gem `$gems' for Ruby `$version'":
      command => "chruby-exec $ruby $version -- gem install $gems",
      require => Exec["install Ruby `$version'"],
    }
  }
}
