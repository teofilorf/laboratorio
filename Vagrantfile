# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "vm01" do |vm01|
    vm01.vm.box = "ubuntu/xenial64"
    #vm01.vm.network "private_network", ip: "192.168.33.22"

    vm01.vm.provision "shell", path: "docker.sh"
  end

  config.vm.provider "virtualbox" do |v|
  	v.customize ["modifyvm", :id, "--memory", "512"]
  end

end
