#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

puts "#{node['sample']}"

node['sample'].each do |foo|
	puts "#{foo}"
end