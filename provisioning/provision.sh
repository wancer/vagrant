#!/bin/bash

if [ ! -f /usr/bin/ansible-playbook ]
    then
    sudo apt-get install software-properties-common
    sudo apt-add-repository ppa:ansible/ansible -y
    sudo apt-get update
    sudo apt-get install -y ansible
    echo "remote_tmp = /vagrant/ansible/tmp" >> /etc/ansible/ansible.cfg
fi

#ansible-playbook --inventory="localhost," -c local  /home/vagrant/provisioning/playbook.yml
