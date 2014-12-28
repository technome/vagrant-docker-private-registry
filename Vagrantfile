Vagrant.configure(2) do |config|
  config.vm.box_download_insecure = "true"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  config.vm.box = "centos65-x86_64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network "forwarded_port", guest: 5000, host: 5000, auto_correct: true, protocol: 'tcp'
  config.vm.network "forwarded_port", guest: 5000, host: 5000, auto_correct: true, protocol: 'udp'
end
