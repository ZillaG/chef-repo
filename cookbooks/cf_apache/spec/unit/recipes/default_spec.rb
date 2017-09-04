#
# Cookbook:: cf_apache
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'cf_apache::default' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new(platform: 'mac_os_x', version: '10.10')
    runner.converge(described_recipe)
  end

  it 'converges successfully' do
    expect { chef_run }.to_not raise_error
  end

  it 'installs httpd' do
    expect(chef_run).to install_package 'httpd'
  end

  it 'creates /etc/httpd/conf/httpd.conf' do
    expect(chef_run).to create_template('/etc/httpd/conf/httpd.conf').with(
      user: 'root',
      group: 'root',
      mode: '0644',
    )
  end

  it 'creates /var/www/html/index.html' do
    expect(chef_run).to create_template('/var/www/html/index.html').with(
      user: 'root',
      group: 'root',
      mode: '0644',
    )
  end

  it 'enables the httpd service' do
    expect(chef_run).to enable_service 'httpd'
  end

  it 'starts the httpd service' do
    expect(chef_run).to start_service 'httpd'
  end
end
