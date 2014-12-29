Vagrant.configure(2) do |config|
  config.vm.box_download_insecure = "true"
  config.vm.box = "chef/centos-6.5"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network "forwarded_port", guest: 5000, host: 5000, auto_correct: true, protocol: 'tcp'
  config.vm.network "forwarded_port", guest: 5000, host: 5000, auto_correct: true, protocol: 'udp'
end
