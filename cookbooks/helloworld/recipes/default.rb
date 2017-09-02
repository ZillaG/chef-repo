#
# Cookbook:: helloworld
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

[ruby]
  file "#{ENV[‘HOME’]}/x.txt" do
    content ‘HELLO WORLD’
  end
[/ruby]
