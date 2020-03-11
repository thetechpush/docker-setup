# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  config.vm.provision "shell", path: "bootstrap.sh"

  # Jenkins Server Setup
  config.vm.define "svrdock001" do |svrdock001|
    svrdock001.vm.box = "centos/7"
    svrdock001.vm.hostname = "svrdock001.example.com"
    svrdock001.vm.network "private_network", ip: "172.42.42.105"
    svrdock001.vm.provider "virtualbox" do |v|
      v.name = "svrdock001"
      v.memory = 1024
      v.cpus = 1
      # Prevent VirtualBox from interfering with host audio stack
      v.customize ["modifyvm", :id, "--audio", "none"]
    end
    svrdock001.vm.provision "shell", path: "bootstrap_docker.sh"
  end
end
