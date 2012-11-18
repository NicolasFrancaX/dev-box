class install {

  include packages
  include gems

  include git
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

# ln -sf $PWD/ruby/irbrc                 ~/.irbrc
# ln -sf $PWD/ruby/gemrc                 ~/.gemrc
# ln -sf $PWD/tmux/tmux.conf             ~/.tmux.conf
# ln -sf $PWD/oh-my-zsh                  ~/.oh-my-zsh
# ln -sf ~/.oh-my-zsh/zshrc              ~/.zshrc
# ln -sf $PWD/fonts                      ~/.fonts
# mkdir -p ~/.config/Terminal
# ln -sf $PWD/solarized/light/terminalrc ~/.config/Terminal/terminalrc
# 
# chsh -s /bin/zsh