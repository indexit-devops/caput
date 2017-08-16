# Install nagios Client

```
# yum install nrpe nagios-plugins-* -y
# vim /etc/nagios/nrpe.cfg
allowed_hosts = localhost,<IP ADDRESS OF NAGIOS SERVER
# systemctl enable nrpe 
# systemctl start nrpe
```


# You can check the communication from nagios sever to nagios client using the following command in nagios server
```
# /usr/lib64/nagios/plugins/check_nrpe -H <IP ADDRESS OF CLIENT SERVER>
# /usr/lib64/nagios/plugins/check_nrpe -H <IP ADDRESS OF CLIENT SERVER> -c check_load
```

### Sample Outputs
```
[root@nagiosserver conf.d]# /usr/lib64/nagios/plugins/check_nrpe -H nexus
NRPE v3.1.1
[root@nagiosserver conf.d]# /usr/lib64/nagios/plugins/check_nrpe -H nexus -c check_load
WARNING - load average: 0.02, 0.10, 0.06|load1=0.020;0.150;0.300;0; load5=0.100;0.100;0.250;0; load15=0.060;0.050;0.200;0; 
[root@nagiosserver conf.d]# 
```

