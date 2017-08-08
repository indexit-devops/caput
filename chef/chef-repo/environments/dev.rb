name 'dev'
description 'The development environment'
cookbook_versions  'tomcat' => '= 0.1.2'
default_attributes 'tomcat' => { 'dbip' => '10.128.0.99' }
