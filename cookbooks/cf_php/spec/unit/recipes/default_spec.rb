#
# Cookbook:: cf_php
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'cf_php::default' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new(platform: 'mac_os_x', version: '10.10')
    runner.converge(described_recipe)
  end

  it 'converges successfully' do
    expect { chef_run }.to_not raise_error
  end

  it 'installs php' do
    expect(chef_run).to install_package 'php'
  end

  it 'creates /var/www/html/info.php' do
    expect(chef_run).to create_file('/var/www/html/info.php').with(
      user: 'root',
      group: 'root',
      mode: '0644',
    )
  end

  it 'restarts the httpd service' do
    expect(chef_run).to notify('service[httpd]').to(:restart).delayed
  end

end
