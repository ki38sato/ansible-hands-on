# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
HOSTNAME1 = "ansible-handson-srv"
HOSTNAME2 = "ansible-handson-guest1"
HOSTNAME3 = "ansible-handson-guest2"
IP1 = "192.168.200.10"
IP2 = "192.168.200.20"
IP3 = "192.168.200.30"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-6.5"

  config.vm.define "#{HOSTNAME1}" do |guest|
    guest.vm.provision "shell", path: "ansible.sh"
    guest.vm.network :private_network, ip: IP1
    guest.vm.hostname = "#{HOSTNAME1}"
    guest.vm.synced_folder "repos", "/vagrant", :mount_options => ["dmode=777","fmode=666"]
    guest.vm.provider "virtualbox" do |vb|
      vb.name = "#{HOSTNAME1}"
    end
  end

  config.vm.define "#{HOSTNAME2}" do |guest|
    guest.vm.provision "shell", path: "bootstrap.sh"
    guest.vm.network :private_network, ip: IP2
    guest.vm.hostname = "#{HOSTNAME2}"
    guest.vm.provider "virtualbox" do |vb|
      vb.name = "#{HOSTNAME2}"
    end
  end

  config.vm.define "#{HOSTNAME3}" do |guest|
    guest.vm.provision "shell", path: "bootstrap.sh"
    guest.vm.network :private_network, ip: IP3
    guest.vm.hostname = "#{HOSTNAME3}"
    guest.vm.provider "virtualbox" do |vb|
      vb.name = "#{HOSTNAME3}"
    end
  end

end
