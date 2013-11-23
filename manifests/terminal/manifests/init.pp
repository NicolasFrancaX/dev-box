class terminal {
  if $operatingsystem == 'Archlinux' {
    file { [
      "$home/.config",
      "$home/.config/xfce4",
      "$home/.config/xfce4/terminal",
    ]:
      ensure => directory,
    }

    file { "$home/.config/xfce4/terminal/terminalrc":
      ensure  => link,
      target  => "$modulepath/terminal/files/terminal/terminalrc",
      require => File["$home/.config/xfce4/terminal"],
    }

    file { "/usr/share/xfce4/terminal/colorschemes/tomorrow.themes":
      ensure  => link,
      target  => "$modulepath/terminal/files/terminal/colorschemes/tomorrow.theme",
    }

    file { '/etc/profile.d/chruby.sh':
      ensure => link,
      target => "$modulepath/zsh/files/custom/ruby.zsh",
      owner  => 'root',
      group  => 'root',
    }
  }
}
