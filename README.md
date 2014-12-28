vagrant-grails
==============

Vagrant VM configuration for running a private docker registry

Requirements:
* [Vagrant 1.6.3+](http://docs.vagrantup.com/v2/installation/)
* [VirtualBox 4.3.14+](https://www.virtualbox.org/wiki/Downloads)
* vagrant [vbguest plugin](https://github.com/dotless-de/vagrant-vbguest)
* vagrant [cachier plugin](http://fgrehm.viewdocs.io/vagrant-cachier)

To install required vagrant plugins
```
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-cachier
```

To bring up the VM with all installations 
```
vagrant up
```

Once all the installations are completed, just restart the VM
```
vagrant halt
vagrant up
```

This script installs the following softwares on a CentOS 6.5 64 bit server.
* [docker](https://docs.docker.com/installation/centos/)
* [docker-registry](https://github.com/docker/docker-registry)

Also adds docker and docker-registry as startup services when the VM starts and forwards the port 5000 of the VM onto localhost port 5000. (tcp protocol only)

Note 
====
* This does not involve any security setup. You can configure [nginx](http://nginx.org/en/) or any other http server to provide the required security.
* No SSL also configured. You can setup [SSL with nginx](http://nginx.org/en/docs/http/configuring_https_servers.html) as well.
* Also configure docker [insecure registries](https://docs.docker.com/reference/commandline/cli/#insecure-registries)
