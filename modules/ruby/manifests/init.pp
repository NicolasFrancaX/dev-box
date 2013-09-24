class ruby {
  class { 'chruby': }

  ruby::install { 'ruby-2.0.0-p247':
    require => Class['chruby'],
  }
}
