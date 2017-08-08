
node['apache']['conf_files'].each do |file_name|
	cookbook_file "/etc/httpd/conf.d/#{file_name}" do 
		source "#{file_name}"
	end
end

cookbook_file "/etc/httpd/modules/#{node['apache']['so_files']}" do 
	source "#{node['apache']['so_files']}"
end