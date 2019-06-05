#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Update the sources list
apt_update("update_sources") do
  action [:update]
end

# Install nginx
package("nginx") do
  action :install
end


service 'nginx' do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end
