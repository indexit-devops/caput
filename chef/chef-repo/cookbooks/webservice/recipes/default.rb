#
# Cookbook:: webservice
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

%w(httpd httpd-devel gcc).each do |pack|
	package "#{pack}" do 
		action :install
	end
end



cookbook_file '/etc/httpd/modules/mod_jk.so' do
  source 'mod_jk.so'
  action :create
  mode '0755'
end

%w(workers.properties mod_jk.conf).each do |filename|
	cookbook_file "/etc/httpd/conf.d/#{filename}" do 
		source "#{filename}"
		action :create
	end
end

service 'httpd' do
	action [ :restart, :enable ]
end















