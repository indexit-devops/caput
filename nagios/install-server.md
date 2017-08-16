# Install Nagios Server

```
# yum install nagios nagios-plugins-* 
# htpasswd -c /etc/nagios/passwd nagiosadmin
# systemctl restart httpd
# systemctl restart nagios
# systemctl enable httpd
# systemctl enable nagios
```

