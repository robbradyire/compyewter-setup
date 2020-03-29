# Config version: 2
Vagrant.configure("2") do |config|

  # Use bionic64 box
  config.vm.box = "hashicorp/bionic64"

  # Set shared folder (host dir, guest dir)
  config.vm.synced_folder "src", "/vagrant-src"

  config.vm.provider "virtualbox" do |v|
    # Limit host CPU usage to 50% max
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
    # 1Gb RAM
    v.memory = "1024"
  end
end

