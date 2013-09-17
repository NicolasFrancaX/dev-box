class ruby {
  class { 'chruby': }

  ruby::install{ 'ruby':
    gems    => 'bundler pry-nav rails qwandry',
    require => Class['chruby'],
  }
}
