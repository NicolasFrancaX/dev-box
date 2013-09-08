Vagrant.configure '2' do |config|
  config.vm.box = 'precise64'

  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  config.vm.hostname = 'dev-box'

  config.vm.network :forwarded_port, guest:   80, host: 8080 # nginx
  config.vm.network :forwarded_port, guest: 3000, host: 3000 # rails
  config.vm.network :forwarded_port, guest: 5000, host: 5000 # foreman

  config.vm.provision :puppet do |puppet|
    modulepath            = 'modules'

    puppet.module_path    = modulepath
    puppet.manifests_path = 'scripts'
    puppet.manifest_file  = 'site.pp'

    puppet.facter = {
      'home'       => '/home/vagrant',
      'user'       => 'vagrant',
      'group'      => 'vagrant',
      'modulepath' => "/vagrant/#{ modulepath }",
    }
  end
end
