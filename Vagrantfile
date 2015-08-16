# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  #config.vm.box = "ubuntu/trusty64"
  config.vm.box = "trusty64-vb5-docker"
  config.vm.box_check_update = false
  config.vm.hostname = "wp-dev"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  
  config.vm.provision "shell", path: "https://raw.githubusercontent.com/srctips/vagrant-wordpress/master/setup/provision.sh"

  config.vm.provider "virtualbox" do |vb|
     vb.name = "Wordpress_Development"
     vb.memory = "1024"
     # vb.cpus = 2
  end
end
