#!/bin/bash

su - vagrant -c "sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm"
su - vagrant -c "sudo yum -y install docker-io docker-registry"
su - vagrant -c "sudo service docker start"
su - vagrant -c "sudo service docker-registry start"
su - vagrant -c "sudo chkconfig --add docker"
su - vagrant -c "sudo chkconfig --add docker-registry"
su - vagrant -c "sudo chkconfig docker on"
su - vagrant -c "sudo chkconfig docker-registry on"
