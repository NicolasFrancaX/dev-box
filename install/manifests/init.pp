class install {

  include packages
  include gems

  include fonts
  include git
  include ruby
  include terminal
  include vim

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

# ln -sf $PWD/tmux/tmux.conf             ~/.tmux.conf
# 
# chsh -s /bin/zsh
