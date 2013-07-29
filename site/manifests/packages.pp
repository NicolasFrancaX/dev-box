class site::packages {

  package {[
    'gvim',
    'ttf-dejavu',
    'ttf-droid',
    'ttf-ms-fonts',
    'ttf-bitstream-vera',
    'zip',
    'unzip',
    'unrar',
    'p7zip',
    'ntfs-3g',
    'wicd',
    'wicd-gtk',
    'pmount',
    'evince',
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
    'jq',
    'rsync',
    'mit-scheme',
    'vlc',
    'vagrant',
    'httpie',
    'ntp',
    'nfs-utils',
    'simplescreenrecorder',
    'skype',
    'encfs',
  ]:}

  # http://drbunsen.github.com/formd/

  file {'/usr/bin/formd':
    ensure => link,
    target => "$dotfiles_path/site/files/formd",
  }
}
