# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.0"

# server settings
$name = "dev"
$addr = "192.168.33.10"
$playbook_dir = "PLAYBOOK_DIR"
$playbook = "./ansible/dev.yml"

Vagrant.configure(2) do |config|
  config.ssh.forward_agent = true
  config.ssh.insert_key = false

  config.vm.box = "https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.0.0/centos-6.6-x86_64.box"
  config.vm.network "private_network", ip: $addr
  config.vm.box_check_update = false
  #config.vbguest.auto_update = false
  config.vm.synced_folder "./ansible", "/home/vagrant/ansible"

  config.vm.provision :shell, :path => "./install_ansible.sh"

  # conf.vm.provision :ansible do |ansible|
  #   ansible.playbook = $playbook
  # end
end
