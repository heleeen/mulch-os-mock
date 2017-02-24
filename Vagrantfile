# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.0"

# server settings
$name = "dev"
$addr = "192.168.33.10"
$playbook_dir = "PLAYBOOK_DIR"
$playbook = "./ansible/dev.yml"

# prov settings
$prov_box_name = "prov"
$prov_addr = "192.168.33.11"
$prov_shell = "FILE_NAME"

Vagrant.configure(2) do |config|
  config.vm.box = "https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.0.0/centos-6.6-x86_64.box"
  config.vm.box_check_update = false
  #config.vbguest.auto_update = false
  config.ssh.forward_agent = true
  config.ssh.insert_key = false

  config.vm.define $name do |conf|
    conf.vm.hostname = $name
    conf.vm.network "private_network", ip: $addr
  end

  config.vm.define $prov_box_name do |conf|
     conf.vm.hostname = $prov_box_name
     conf.vm.synced_folder "./ansible", "/home/vagrant/ansible"
     conf.vm.network "private_network", ip: $prov_addr
     config.vm.provision :shell, :path => "./install_ansible.sh"
  end
end
