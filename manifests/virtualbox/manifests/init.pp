class virtualbox {
  if $operatingsystem == 'archlinux' {
    package { [
      'virtualbox',
      'virtualbox-guest-iso',
    ]: }

    file { '/etc/modules-load.d/virtualbox.conf':
      content => "vboxdrv\nvboxnetadp\nvboxnetflt",
      owner   => 'root',
      group   => 'root',
    }
  }
}
