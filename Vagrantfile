# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.synced_folder "./src", "/home/vagrant/src"

  config.vm.provision :ansible do |ansible|
    ansible.compatibility_mode = '2.0'
    ansible.playbook = 'ansible/provision.yml'
    ansible.extra_vars = {
      ubuntu_version: '18.04',
      ansible_python_interpreter:'/usr/bin/python3',
    }
    ansible.raw_arguments = [
      # Enable this to see debug output
      # '-vvvv',
    ]
  end
end
