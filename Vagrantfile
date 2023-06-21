Vagrant.configure("2") do |config|
  config.vm.box = "kali-2023.2"
  config.vm.provider "vmware_desktop" do |vcfg|
    vcfg.memory = "8192" # 8GB
    vcfg.vmx["cpuid.coresPerSocket"]  = "2"
    vcfg.vmx["numvcpus"] = "2"
  end
  # upload our scripts to vm and install what we need.
  $script = <<-SCRIPT
  cd /home/vagrant/install-scripts && sh install-packages.sh
  SCRIPT
  config.vm.provision "file", source: "install-scripts", destination: "/home/vagrant/install-scripts"
  config.vm.provision "shell", inline: $script, privileged: false
  #config.vm.disk :disk, size: "100GB", primary: true
  config.vm.synced_folder "C:\\Users\\zinhart\\Desktop\\awae", "/home/vagrant/Desktop/awae"
end
