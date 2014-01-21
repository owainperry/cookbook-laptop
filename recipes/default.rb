#
# Cookbook Name:: owain_laptop
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "chocolatey"

%w{ sysinternals wget}.each do |pack|
  chocolatey pack
end