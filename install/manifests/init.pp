class install {

  include packages
  include gems

  include fonts
  include git
  include ruby
  include terminal
  include tmux
  include vim

  Package {
    ensure => present,
  }

  Exec {
    path => [
      '/usr/local/bin',
      '/usr/bin',
      '/bin',
      '/usr/local/sbin',
      '/usr/sbin',
      '/sbin',
    ],
  }
}
