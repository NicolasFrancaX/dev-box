class site {

  include packages
  include services

  include fonts
  include git
  include keyboard
  include ruby
  include terminal
  include tmux
  include vim

  Package {
    ensure => present,
  }

  Service {
    ensure => running,
    enable => true,
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
