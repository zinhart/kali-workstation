Vagrant.configure("2") do |config|
  config.vm.box = "kalilinux/rolling"
  config.vm.provider "vmware_desktop" do |vcfg|
    vcfg.memory = "8192" # 8GB
    vcfg.vmx["cpuid.coresPerSocket"]  = "2"
    vcfg.vmx["numvcpus"] = "2"
    # temporary while in pwk
    config.vm.synced_folder "C:\\Users\\zinhart\\Desktop\\pwk-public-servers", "/home/vagrant/Desktop/pwk-public-servers"
  end
  # upload our scripts to vm and install what we need.
  config.vm.provision "file", source: "install-scripts", destination: "/home/vagrant/install-scripts"
  config.vm.provision "shell", inline:"cd /home/vagrant/install-scripts && sh install-packages.sh"
end
