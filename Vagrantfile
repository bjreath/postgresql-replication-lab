# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.berkshelf.enabled = true

  config.vm.define :master do |master|
    master.vm.box = "centos64-ruby2"

    master.vm.hostname = "master-postgresql"
    master.vm.network :private_network, ip: "192.168.199.1"

    master.vm.provision "chef_solo" do |chef|
      chef.add_recipe "postgresql-lab"
      chef.json = {

      }
    end
  end

  config.vm.define :slave do |slave|
    slave.vm.box = "centos64-ruby2"

    slave.vm.hostname = "slave-postgresql"
    slave.vm.network :private_network, ip: "192.168.199.2"

    slave.vm.provision "chef_solo" do |chef|
      chef.add_recipe "postgresql-lab"
      chef.json = {

      }
    end
  end

end
