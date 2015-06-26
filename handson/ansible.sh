#!/bin/sh
sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
sudo yum -y install ansible
sudo yum -y install libselinux-python
sudo su -
echo "192.168.200.20 guest1 guest1" >> /etc/hosts
echo "192.168.200.30 guest2 guest2" >> /etc/hosts
