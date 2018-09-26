# Vagrant for crypto project

# Contains
 - nodejs (lates)
 - php
 - nginx

# Installation
 - VirtualBox https://www.virtualbox.org/  
 - Vagrant https://www.vagrantup.com/downloads.html  

# Run
 1. clone this repo  
 2. cd "vagrant"  
 3. vagrant up  
 4. Wait -> done.  
 5. Copy/move your project files to www directory

# How To
## get files in parent OS and in vagrant
 put in in www directory - it's mounted to /var/www inside vagrant

## get into vagrant VM
 vagrant ssh

## update config from provision directory
 vagrant provision

## reload vagrant
 vagrant reload
