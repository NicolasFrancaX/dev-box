define ruby::install($version = $title, $gems = false) {
  exec { "install ruby `$version'":
    command => "ruby-install $version",
    user    => 'root',
    group   => 'root',
    timeout => 0,
  }

  if $gems {
    exec { "install gems `$gems' for ruby `$version'":
      command => "chruby-exec $version -- gem install $gems > /tmp/chruby-exec.log 2>&1",
      require => Exec["install ruby `$version'"],
    }
  }
}
