class desktop::vagrant {
  exec { 'install vagrant-vbguest':
    command => 'vagrant plugin install vagrant-vbguest',
    unless  => "grep -q vagrant-vbguest $home/.vagrant.d/plugins.json",
  }
}
