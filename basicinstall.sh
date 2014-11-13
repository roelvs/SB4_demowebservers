#!/bin/bash

#add epel repo
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm

sudo rpm -Uvh epel-release-7*.rpm


#update
sudo yum update -y




#install puppet

sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm

sudo yum install puppet -y

#install puppet modules
sudo puppet module install -i /etc/puppet/modules puppetlabs-apache
sudo puppet module install -i /etc/puppet/modules jfryman-nginx
sudo puppet module install -i /etc/puppet/modules puppetlabs-firewall


