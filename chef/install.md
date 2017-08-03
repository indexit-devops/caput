# Install Chef Server

```
# yum install https://packages.chef.io/files/stable/chef-server/12.15.8/el/7/chef-server-core-12.15.8-1.el7.x86_64.rpm -y
# chef-server-ctl reconfigure
# chef-server-ctl user-create admin Admin User admin@localhost 'password' --filename /opt/admin.pem
# chef-server-ctl org-create indexit 'InxexIT Ameerpet' --association_user admin --filename /opt/indexit.pem
# chef-server-ctl install chef-manage
# chef-server-ctl reconfigure
# chef-manage-ctl reconfigure
```
## You can open chef server in browser.
