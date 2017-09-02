Vagrant.configure("2") do |config|
  config.vm.box = "opscode-centos-7.0"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-7.0_chef-provisionerless.box"
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_zero do |chef|
    chef.environments_path = "environments"
    chef.cookbooks_path = "cookbooks"
    chef.data_bags_path = "data_bags"
    chef.nodes_path = "nodes"
    chef.roles_path = "roles"
  end

  config.vm.network :forwarded_port, guest: 80, host: 8080
end
