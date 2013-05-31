class site::packages {

  package {[
    'gvim',
    'ttf-dejavu',
    'ttf-droid',
    'zip',
    'unzip',
    'unrar',
    'ntfs-3g',
    'wicd',
    'wicd-gtk',
    'pmount',
    'evince',
    'gstreamer0.10-plugins',
    'chromium',
    'flashplugin',
    'xcursor-neutral',
    'slim-themes',
    'archlinux-themes-slim',
    'archlinux-wallpaper',
    'xscreensaver',
    'openssh',
    'tmux',
    'htop',
    'irssi',
    'gnu-netcat',
    'git',
    'ruby',
    'ruby-docs',
    'zsh',
    'tig',
    'ack',
    'ctags',
    'nodejs',
    'postgresql',
    'pgadmin3',
    'eclipse',
    'tree',
    'gimp',
    'dnsutils',
    'calibre',
    'ttf-ms-fonts',
    'file-roller',
    'dropbox',
    'thunar-dropbox',
    'elementary-xfce-icons',
    'shutter',
    'truecrypt',
    'xclip',
    'virtualbox',
    'virtualbox-guest-iso',
    'python',
    'python-pip',
    'espeak',
    'cloc',
    'figlet',
    'heroku-toolbelt',
    'whois',
    'graphviz',
    'gparted',
    'inkscape',
    'sshfs',
    'wget',
    'recordmydesktop',
    'gtk-recordmydesktop',
    'jq',
    'rsync',
    'mit-scheme',
    'vlc',
    'vagrant',
    'httpie',
  ]:}

  # http://drbunsen.github.com/formd/

  file {'/usr/bin/formd':
    ensure => link,
    target => "$basedir/site/files/formd",
  }
}
