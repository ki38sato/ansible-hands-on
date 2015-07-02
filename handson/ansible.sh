#!/bin/sh
sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
sudo cp /vagrant/epel.repo /etc/yum.repos.d/epel.repo
sudo yum -y install ansible
sudo yum -y install libselinux-python
mv /etc/ansible/ansible.cfg /etc/ansible/ansible.cfg_org
mv /etc/ansible/hosts /etc/ansible/hosts_org
sudo su -
echo "192.168.200.20 guest1 guest1" >> /etc/hosts
echo "192.168.200.30 guest2 guest2" >> /etc/hosts
