Vagrant.configure("2") do |config|

  config.vm.define "puppet_master.vm" do |puppet_master|
    puppet_master.vm.box = "centos/7"
    puppet_master.vm.hostname = "puppet-master.vm"
    puppet_master.vm.provision "shell", path: "scripts/puppet-masterbootstrap.sh"
    puppet_master.vm.network "private_network", ip: "192.168.50.4"
    config.vm.box_download_insecure = true
    puppet_master.vm.provider "virtualbox" do |vb|
      vb.name = "puppet-master"
      vb.memory = "2048"
      vb.cpus = "2"
    end
  end 

  config.vm.define "linux_agent.vm" do |linux_agent|
    linux_agent.vm.box = "centos/7"
    linux_agent.vm.hostname = "linux-agent.vm"
    linux_agent.vm.network "private_network", ip: "192.168.50.5"
    linux_agent.vm.provision "shell", path: "scripts/linux_agent.sh"
    config.vm.box_download_insecure = true
    linux_agent.vm.provider "virtualbox" do |vb|
      vb.name = "linux-agent"
      vb.memory = "1024"
    end
  end

  config.vm.define "windows_agent.vm" do |windows_agent|
    windows_agent.vm.box = "ferventcoder/win2012r2-x64-nocm"
    windows_agent.vm.communicator = "winrm"
    windows_agent.vm.hostname = "windows"
    windows_agent.vm.provision "shell", path: "scripts/windows_agent.ps1"
    windows_agent.vm.network "private_network", ip: "192.168.50.6"
    windows_agent.vm.provider "virtualbox" do |vb|
      vb.name = "windows-agent"
      vb.memory = "1024"
    end
  end
end
