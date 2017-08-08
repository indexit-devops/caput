
remote_file "/opt/#{node['tomcat']['TAR']}" do 
	source "#{node['tomcat']['URL']}"
end

execute "Extracting tomcat" do 
	command "tar xf #{node['tomcat']['TAR']}"
	cwd "/opt"
end

template "/opt/#{node['tomcat']['DIR']}/conf/context.xml" do 
	source 'context.xml.erb'
	variables({
		:dbip => "#{node['tomcat']['dbip']}"
		})
end
