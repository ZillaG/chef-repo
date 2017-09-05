#
# Cookbook:: cf_php
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

package 'php'

file '/var/www/html/info.php' do
  content "
    <?php phpinfo();
  "
  mode '0644'
  owner 'root'
  group 'root'
  notifies :restart, 'service[httpd]'
end

service 'httpd' do
  action :nothing
end
