class archlinux::packages {
  package {[
    # Text editors.

    'gvim',
    'sublime-text',

    # Fonts.

    'ttf-dejavu',
    'ttf-droid',
    'ttf-ms-fonts',
    'ttf-bitstream-vera',

    # Compression tools.

    'file-roller',
    'zip',
    'unzip',
    'unrar',
    'p7zip',

    # Network management.

    'wicd',
    'wicd-gtk',

    # Device management.

    'pmount',
    'gparted',
    'jmtpfs',
    'ntfs-3g',
    'unetbootin',

    # PDF reader.

    'evince',

    # Web.

    'chromium',
    'flashplugin',
    'transmission-gtk',
    'skype',

    # Appearance.

    'elementary-xfce-icons',
    'xcursor-neutral',
    'archlinux-themes-slim',

    # Screen saver.

    'xscreensaver',

    # Command line tools.

    'zsh',
    'tmux',
    'openssh',
    'gnu-netcat',
    'htop',
    'atop',
    'tig',
    'the_silver_searcher',
    'ctags',
    'tree',
    'dnsutils',
    'xclip',
    'espeak',
    'cloc',
    'figlet',
    'whois',
    'graphviz',
    'wget',
    'jq',
    'rsync',
    'httpie',
    'ncdu',

    # PostgreSQL database browser.

    'pgadmin3',

    # Java IDE.

    'eclipse',

    # Graphic manipulation.

    'gimp',
    'inkscape',

    # Ebook converter.

    'calibre',

    # Screen capture.

    'shutter',
    'simplescreenrecorder',

    # Virtualization.

    'virtualbox',
    'virtualbox-guest-iso',
    'vagrant',

    # Video player.

    'vlc',

    # Time synchronization.

    'ntp',

    # Encryption.

    'encfs',

    # Jokes.

    'fortune-mod',
    'cowsay',
    'cmatrix',
  ]: }
}
