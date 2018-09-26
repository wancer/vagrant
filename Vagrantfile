# This is core Vagrant configuration file
# All Virtual Machine changes managed here

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # OS image
  config.vm.box = "bento/ubuntu-16.04"

  config.ssh.insert_key = true
  config.ssh.keys_only = true

  # Private IP
  config.vm.network "private_network", ip: "192.168.56.101"
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  
  # Synced folder
  config.vm.synced_folder "./www", "/var/www", id: "project", owner: 'www-data', group: 'www-data'
  config.vm.synced_folder "./provisioning", "/home/vagrant/provisioning", id: "provisioning", owner: 'www-data', group: 'www-data'
  config.vm.provider "virtualbox" do |v|
    # Turn GUI off - turn in on only in special cases (e.g. debugging system startup)
    v.gui = false

    # Use VBoxManage to customize the VM. For example to change memory:
    v.customize ["modifyvm", :id, "--memory",               "1024"]
    v.customize ["modifyvm", :id, "--cpuexecutioncap",      "95"]
    v.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 1000 ]
	v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
  end

  # Run Ansible from the Vagrant VM
  config.vm.provision :shell, :inline => "sh /home/vagrant/provisioning/provision.sh", run: "always"

end
