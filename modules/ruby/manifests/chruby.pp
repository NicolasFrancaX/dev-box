class ruby::chruby(
  $chruby_version       = '0.3.7',
  $ruby_install_version = '0.3.0',
) {
  exec { "install chruby $chruby_version":
    command => "wget -O chruby-${chruby_version}.tar.gz https://github.com/postmodern/chruby/archive/v${chruby_version}.tar.gz && tar -xzvf chruby-${chruby_version}.tar.gz && cd chruby-${chruby_version} && make install",
    creates => '/usr/local/share/chruby/chruby.sh',
    cwd     => '/tmp',
    user    => 'root',
    group   => 'root',
  }

  exec { "install ruby-install $ruby_install_version":
    command => "wget -O ruby-install-${ruby_install_version}.tar.gz https://github.com/postmodern/ruby-install/archive/v${ruby_install_version}.tar.gz && tar -xzvf ruby-install-${ruby_install_version}.tar.gz && cd ruby-install-${ruby_install_version}/ && make install",
    creates => '/usr/local/share/ruby-install/ruby-install.sh',
    cwd     => '/tmp',
    user    => 'root',
    group   => 'root',
  }

  file { "$home/.chrubyrc":
    target => "$modulepath/ruby/files/chrubyrc",
  }
}
