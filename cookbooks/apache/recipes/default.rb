#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

package 'httpd'

service 'httpd' do
  supports :status => true
  action :start
end
