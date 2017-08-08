file "/opt/#{node['tomcat']['DIR']}/webapps/student.war" do 
	action :delete
end

directory "/opt/#{node['tomcat']['DIR']}/webapps/student" do
  recursive true
  action :delete
end

remote_file "/opt/#{node['tomcat']['DIR']}/webapps/student.war" do  
	source "#{node['tomcat']['WAR_URL']}"
end
