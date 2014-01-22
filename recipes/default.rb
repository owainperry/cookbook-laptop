#
# Cookbook Name:: owain_laptop
# Recipe:: default
#
# Copyright (C) 2014 Owain Perry
# 
# All rights reserved - Do Not Redistribute
#

platform = node['platform_family']

case platform
	when 'rhel'	
		# not using linux at the moment. 
	when 'windows'
		#include_recipe "bootstrap::windows"
		include_recipe "owain_laptop::standard_tools"
		include_recipe "owain_laptop::infrastructure_development"
	else
		Chef::Log.info "Not supported on this platform #{platform}"
end


