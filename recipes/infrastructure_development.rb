#infrastructure development 

include_recipe "chocolatey"

%w{ packer wget vagrant}.each do |pack|
  chocolatey pack
end

#Install vagrant windows plugin
vagrant_windows_install_file = "c:\\Windows\\vagrant-windows-installed.txt"
execute "vagrant-windows" do
    command "vagrant plugin install vagrant-windows > #{vagrant_windows_install_file}"
    not_if { ::File.exists?(vagrant_windows_install_file)}
end

vagrant_berkshelf_install_file = "c:\\Windows\\vagrant-windows-installed.txt"
execute "vagrant-berkshelf" do
    command "vagrant plugin install vagrant-berkshelf > #{vagrant_berkshelf_install_file}"
    not_if { ::File.exists?(vagrant_berkshelf_install_file)}
end

