class install::packages {

  package {'gvim':}

  package {'ttf-dejavu':}

  package {'ttf-droid':}

  package {'zip':}

  package {'unzip':}

  package {'unrar':}

  package {'ntfs-3g':}

  package {'wicd':}

  package {'wicd-gtk':}

  package {'pmount':}

  package {'epdfview':}

  package {'parole':}

  package {'gstreamer0.10-plugins':}

  package {'chromium':}

  package {'flashplugin':}

  package {'xcursor-neutral':}

  package {'slim-themes':}

  package {'archlinux-themes-slim':}

  package {'archlinux-wallpaper':}

  package {'xscreensaver':}

  package {'openssh':}

  package {'tmux':}

  package {'htop':}

  package {'irssi':}

  package {'gnu-netcat':}

  package {'git':}

  package {'ruby':}

  package {'ruby-docs':}

  package {'zsh':}

  package {'tig':}

  package {'ack':}

  package {'ctags':}

  package {'nodejs':}

  package {'postgresql':}

  package {'pgadmin3':}

  package {'eclipse':}

  package {'tree':}

  package {'gimp':}

  package {'dnsutils':}

  package {'calibre':}

  package {'ttf-ms-fonts':}

  package {'file-roller':}

  package {'dropbox':}

  package {'thunar-dropbox':}

  package {'dropbox-daemon':}

  package {'elementary-xfce-icons':}

  package {'herrie':}

  package {'shutter':}

  package {'truecrypt':}

  package {'xclip':}

  package {'virtualbox':}

  package {'virtualbox-guest-iso':}

  package {'python':}

  package {'python-pip':}

  package {'espeak':}

  package {'cloc':}

  package {'figlet':}

  package {'heroku-toolbelt':}

  package {'whois':}

  # http://drbunsen.github.com/formd/

  file {'/usr/bin/formd':
    ensure => link,
    target => "$basedir/install/files/formd",
  }
}
