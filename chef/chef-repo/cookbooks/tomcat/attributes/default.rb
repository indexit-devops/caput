default['tomcat']['URL']="http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz"
default['tomcat']['TAR']="#{default['tomcat']['URL'].split('/').last}"
default['tomcat']['DIR']="#{default['tomcat']['TAR'].sub('.tar.gz','')}"
default['tomcat']['dbip']="10.128.0.7"
default['tomcat']['WAR_URL']='https://github.com/indexit-devops/caput/raw/master/appstack/student.war'
