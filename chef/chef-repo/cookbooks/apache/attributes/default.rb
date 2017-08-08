default['apache']['packages']= %w[httpd httpd-devel]

default['apache']['conf_files']=%w[mod_jk.conf workers.properties]
default['apache']['so_files']='mod_jk.so'

