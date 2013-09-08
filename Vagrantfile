Vagrant.configure '2' do |config|
  config.vm.box = 'precise64'

  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  config.vm.network :forwarded_port, guest:   80, host: 8080 # nginx
  config.vm.network :forwarded_port, guest: 3000, host: 3000 # rails
  config.vm.network :forwarded_port, guest: 5000, host: 5000 # foreman

  config.vm.provision :puppet do |puppet|
    puppet.module_path    = 'modules'
    puppet.manifests_path = 'sites'
    puppet.manifest_file  = 'ubuntu.pp'
  end
end
