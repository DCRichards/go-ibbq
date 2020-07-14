Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/trusty64"

  config.vm.synced_folder ".", "/home/vagrant/workspace/src/github.com/sworisbreathing/go-ibbq/v2"

  config.vm.provider "virtualbox" do |v|
  	v.name = "go-ibbq"
  end

  config.vm.provision :shell, :path => "scripts/provision.sh"
end
