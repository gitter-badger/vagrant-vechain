# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "thor" do |thor|
    thor.vm.box = "ubuntu/trusty64"
    thor.vm.network "private_network", ip: "192.168.99.2"
    thor.vm.network "forwarded_port", guest: 8669, host: 8669
    thor.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      vb.gui = false
      # Customize the amount of memory on the VM:
      vb.memory = "1024"
    end
  
    $script = <<-SCRIPT
    #!/bin/bash    
    ./vechain-testnet.sh
    SCRIPT
    
    thor.vm.provision "shell", path: "scripts/install_dependencies.sh"
    thor.vm.provision "shell", path: "scripts/install_go.sh", privileged: false
    thor.vm.provision "shell", path: "scripts/install.sh", privileged: false
    # Autostart script, the provisoner bellow will call the above script to start syncing blocks on the testnet
    # thor.vm.provision "shell", inline: $script
  end
end
