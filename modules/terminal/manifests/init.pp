class terminal {
  class { 'oh_my_zsh': }

  file { [
    "$home/.config",
    "$home/.config/xfce4",
    "$home/.config/xfce4/terminal",
  ]:
    ensure => directory,
  }

  file { "$home/.config/xfce4/terminal/terminalrc":
    ensure  => link,
    target  => "$modulepath/terminal/files/terminalrc",
    require => File["$home/.config/xfce4/terminal"],
  }

  exec { "change default shell for $user to zsh":
    command => "chsh -s /bin/zsh $user",
    require => Package['zsh'],
    unless  => 'echo "$SHELL" | grep -q "zsh"',
    user    => 'root',
    group   => 'root',
  }
}
