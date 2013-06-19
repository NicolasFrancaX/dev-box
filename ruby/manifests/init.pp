class ruby {

  file {"$home/.irbrc":
    ensure => link,
    target => "$dotfiles_path/ruby/files/irbrc",
  }

  file {"$home/.pryrc":
    ensure => link,
    target => "$dotfiles_path/ruby/files/pryrc",
  }

  file {"$home/.gemrc":
    ensure => link,
    target => "$dotfiles_path/ruby/files/gemrc",
  }

  file {"$home/.rbenv":
    ensure => link,
    target => "$dotfiles_path/ruby/files/rbenv",
  }

  file {"$home/.rbenv/plugins":
    ensure  => link,
    target  => "$dotfiles_path/ruby/files/rbenv-plugins",
    require => File["$home/.rbenv"],
  }

  file {"$home/.rbenv/default-gems":
    ensure  => link,
    target  => "$dotfiles_path/ruby/files/default-gems",
    require => File["$home/.rbenv"],
  }
}
