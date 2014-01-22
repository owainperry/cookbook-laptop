#infrastructure development 

include_recipe "chocolatey"

%w{ packer wget}.each do |pack|
  chocolatey pack
end
