#
# Cookbook:: cf_apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

package 'httpd'

template '/var/www/html/index.html' do
  source 'var/www/html/index.html.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[httpd]', :immediately
end

template '/etc/httpd/conf/httpd.conf' do
  source 'etc/httpd/conf/httpd.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[httpd]', :immediately
end

service 'httpd' do
  action [:start, :enable]
end
