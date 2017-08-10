#
# Cookbook:: deploy
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

search(:deploy, "id:dev").each do |foo|
	URL = "#{foo['URL']}"
end

execute 'remove old war files' do 
	command 'rm -rf student*'
	cwd '/opt/apache-tomcat-8.5.16/webapps'
end

remote_file '/opt/apache-tomcat-8.5.16/webapps/student.war' do 
	source "#{URL}"
end
