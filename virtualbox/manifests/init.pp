class virtualbox {
  file { '/etc/modules-load.d/virtualbox.conf':
    content => "vboxdrv\nvboxnetadp\nvboxnetflt",
    owner   => 'root',
    group   => 'root',
  }
}
