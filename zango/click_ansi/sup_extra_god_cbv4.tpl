# Definition des hosts supplementaires

###############################
# Gameservers                 #
###############################

define host{
        use                     god-generic-host
        host_name               god-game00-cbv4-pr
        alias                   god-game00-cbv4-pr
        address                 10.111.205.139
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game01-cbv4-pr
        alias                   god-game01-cbv4-pr
        address                 10.111.205.140
        hostgroups              god-pr
}



define host{
        use                     god-generic-host
        host_name               god-game06-cbv4-pr
        alias                   god-game06-cbv4-pr
        address                 10.111.205.145
        hostgroups              god-pr
}


define host{
        use                     god-generic-host
        host_name               god-game08-cbv4-pr
        alias                   god-game08-cbv4-pr
        address                 10.111.205.147
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game09-cbv4-pr
        alias                   god-game09-cbv4-pr
        address                 10.111.205.148
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game10-cbv4-pr
        alias                   god-game10-cbv4-pr
        address                 10.111.205.149
        hostgroups              god-pr
}


define host{
        use                     god-generic-host
        host_name               god-game12-cbv4-pr
        alias                   god-game12-cbv4-pr
        address                 10.111.205.151
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game13-cbv4-pr
        alias                   god-game13-cbv4-pr
        address                 10.111.205.152
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game14-cbv4-pr
        alias                   god-game14-cbv4-pr
        address                 10.111.205.153
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game15-cbv4-pr
        alias                   god-game15-cbv4-pr
        address                 10.111.205.154
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game16-cbv4-pr
        alias                   god-game16-cbv4-pr
        address                 10.111.205.155
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game17-cbv4-pr
        alias                   god-game17-cbv4-pr
        address                 10.111.205.156
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game18-cbv4-pr
        alias                   god-game18-cbv4-pr
        address                 10.111.205.157
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game19-cbv4-pr
        alias                   god-game19-cbv4-pr
        address                 10.111.205.158
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game20-cbv4-pr
        alias                   god-game20-cbv4-pr
        address                 10.111.205.159
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game21-cbv4-pr
        alias                   god-game21-cbv4-pr
        address                 10.111.205.160
        hostgroups              god-pr
}


define host{
        use                     god-generic-host
        host_name               god-game23-cbv4-pr
        alias                   god-game23-cbv4-pr
        address                 10.111.205.162
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game24-cbv4-pr
        alias                   god-game24-cbv4-pr
        address                 10.111.205.163
        hostgroups              god-pr
}


define host{
        use                     god-generic-host
        host_name               god-game26-cbv4-pr
        alias                   god-game26-cbv4-pr
        address                 10.111.205.165
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-game27-cbv4-pr
        alias                   god-game27-cbv4-pr
        address                 10.111.205.166
        hostgroups              god-pr
}



define host{
        use                     god-generic-host
        host_name               god-game30-cbv4-pr
        alias                   god-game30-cbv4-pr
        address                 10.111.205.169
        hostgroups              god-pr
}



define host{
        use                     god-generic-host
        host_name               god-game37-cbv4-pr
        alias                   god-game37-cbv4-pr
        address                 10.111.205.176
        hostgroups              god-pr
}


define host{
        use                     god-generic-host
        host_name               god-game41-cbv4-pr
        alias                   god-game41-cbv4-pr
        address                 10.111.205.180
        hostgroups              god-pr
}




define host{
        use                     god-generic-host
        host_name               god-game45-cbv4-pr
        alias                   god-game45-cbv4-pr
        address                 10.111.205.184
        hostgroups              god-pr
}

###############################
# Schedulers                  #
###############################

define host{
        use                     god-generic-host
        host_name               god-scheduler00-cbv4-pr
        alias                   god-scheduler00-cbv4-pr
        address                 10.111.205.131
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-vip_scheduler-cbv4-pr
        alias                   god-vip_scheduler-cbv4-pr
        address                 10.111.221.1
        hostgroups              god-pr
}

define service {
        host_name		god-scheduler00-cbv4-pr
        service_description     process_httpd
        check_command           check_snmp_procs!httpd
        use                     generic-service
}

define service {
        host_name		god-scheduler00-cbv4-pr
        service_description     process_xmlserver
        check_command           check_snmp_procs!xmlserver
        use                     generic-service
}


###############################
# proxy time machine          #
###############################

define host{
        use                     god-generic-host
        host_name               god-proxy00-cbv4-pr
        alias                   god-proxy00-cbv4-pr
        address                 10.111.205.133
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-proxy01-cbv4-pr
        alias                   god-proxy01-cbv4-pr
        address                 10.111.205.134
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-proxy02-cbv4-pr
        alias                   god-proxy02-cbv4-pr
        address                 10.111.205.135
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-proxy03-cbv4-pr
        alias                   god-proxy03-cbv4-pr
        address                 10.111.205.136
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-proxy04-cbv4-pr
        alias                   god-proxy04-cbv4-pr
        address                 10.111.205.137
        hostgroups              god-pr
}

define host{
        use                     god-generic-host
        host_name               god-proxy05-cbv4-pr
        alias                   god-proxy05-cbv4-pr
        address                 10.111.205.138
        hostgroups              god-pr
}



#define service {
#        host_name               god-game00-cbv4-pr,god-game01-cbv4-pr,god-game05-cbv4-pr,god-game06-cbv4-pr,god-game07-cbv4-pr,god-game08-cbv4-pr,god-game09-cbv4-pr,god-game10-cbv4-pr,god-game11-cbv4-pr,god-game12-cbv4-pr,god-game13-cbv4-pr,god-game14-cbv4-pr,god-game15-cbv4-pr,god-game16-cbv4-pr,god-game17-cbv4-pr,god-game18-cbv4-pr,god-game19-cbv4-pr,god-game20-cbv4-pr,god-game21-cbv4-pr,god-game22-cbv4-pr,god-game23-cbv4-pr,god-game24-cbv4-pr,god-game25-cbv4-pr,god-game26-cbv4-pr,god-game27-cbv4-pr,god-game28-cbv4-pr,god-game29-cbv4-pr,god-game30-cbv4-pr,god-game31-cbv4-pr,god-game37-cbv4-pr,god-game41-cbv4-pr,god-game42-cbv4-pr,god-game45-cbv4-pr,god-scheduler00-cbv4-pr
#        service_description     CPU
#        check_command           check_server_cpu_win!2!public
#        use                     generic-service
#}

define service {
        host_name               god-game00-cbv4-pr,god-game01-cbv4-pr,god-game05-cbv4-pr,god-game06-cbv4-pr,god-game07-cbv4-pr,god-game08-cbv4-pr,god-game09-cbv4-pr,god-game10-cbv4-pr,god-game11-cbv4-pr,god-game12-cbv4-pr,god-game13-cbv4-pr,god-game14-cbv4-pr,god-game15-cbv4-pr,god-game16-cbv4-pr,god-game17-cbv4-pr,god-game18-cbv4-pr,god-game19-cbv4-pr,god-game20-cbv4-pr,god-game21-cbv4-pr,god-game22-cbv4-pr,god-game23-cbv4-pr,god-game24-cbv4-pr,god-game25-cbv4-pr,god-game26-cbv4-pr,god-game27-cbv4-pr,god-game28-cbv4-pr,god-game29-cbv4-pr,god-game30-cbv4-pr,god-game31-cbv4-pr,god-game37-cbv4-pr,god-game41-cbv4-pr,god-game42-cbv4-pr,god-game45-cbv4-pr,god-scheduler00-cbv4-pr
        service_description     RAM
        check_command           check_ram_win!80!90
        use                     generic-service
}

define service {
        host_name               god-game00-cbv4-pr,god-game01-cbv4-pr,god-game05-cbv4-pr,god-game06-cbv4-pr,god-game07-cbv4-pr,god-game08-cbv4-pr,god-game09-cbv4-pr,god-game10-cbv4-pr,god-game11-cbv4-pr,god-game12-cbv4-pr,god-game13-cbv4-pr,god-game14-cbv4-pr,god-game15-cbv4-pr,god-game16-cbv4-pr,god-game17-cbv4-pr,god-game18-cbv4-pr,god-game19-cbv4-pr,god-game20-cbv4-pr,god-game21-cbv4-pr,god-game22-cbv4-pr,god-game23-cbv4-pr,god-game24-cbv4-pr,god-game25-cbv4-pr,god-game26-cbv4-pr,god-game27-cbv4-pr,god-game28-cbv4-pr,god-game29-cbv4-pr,god-game30-cbv4-pr,god-game31-cbv4-pr,god-game37-cbv4-pr,god-game41-cbv4-pr,god-game42-cbv4-pr,god-game45-cbv4-pr,god-scheduler00-cbv4-pr
        service_description     SWAP
        check_command           check_swap_win!80!90
        use                     generic-service
}

define service {
        host_name               god-game00-cbv4-pr,god-game01-cbv4-pr,god-game05-cbv4-pr,god-game06-cbv4-pr,god-game07-cbv4-pr,god-game08-cbv4-pr,god-game09-cbv4-pr,god-game10-cbv4-pr,god-game11-cbv4-pr,god-game12-cbv4-pr,god-game13-cbv4-pr,god-game14-cbv4-pr,god-game15-cbv4-pr,god-game16-cbv4-pr,god-game17-cbv4-pr,god-game18-cbv4-pr,god-game19-cbv4-pr,god-game20-cbv4-pr,god-game21-cbv4-pr,god-game22-cbv4-pr,god-game23-cbv4-pr,god-game24-cbv4-pr,god-game25-cbv4-pr,god-game26-cbv4-pr,god-game27-cbv4-pr,god-game28-cbv4-pr,god-game29-cbv4-pr,god-game30-cbv4-pr,god-game31-cbv4-pr,god-game37-cbv4-pr,god-game41-cbv4-pr,god-game42-cbv4-pr,god-game45-cbv4-pr,god-scheduler00-cbv4-pr
        service_description     check_space
        check_command           check_windisk_use!C!80!90
        use                     generic-service
}

define service {
        host_name               god-game00-cbv4-pr,god-game01-cbv4-pr,god-game05-cbv4-pr,god-game06-cbv4-pr,god-game07-cbv4-pr,god-game08-cbv4-pr,god-game09-cbv4-pr,god-game10-cbv4-pr,god-game11-cbv4-pr,god-game12-cbv4-pr,god-game13-cbv4-pr,god-game14-cbv4-pr,god-game15-cbv4-pr,god-game16-cbv4-pr,god-game17-cbv4-pr,god-game18-cbv4-pr,god-game19-cbv4-pr,god-game20-cbv4-pr,god-game21-cbv4-pr,god-game22-cbv4-pr,god-game23-cbv4-pr,god-game24-cbv4-pr,god-game25-cbv4-pr,god-game26-cbv4-pr,god-game27-cbv4-pr,god-game28-cbv4-pr,god-game29-cbv4-pr,god-game30-cbv4-pr,god-game31-cbv4-pr,god-game37-cbv4-pr,god-game41-cbv4-pr,god-game42-cbv4-pr,god-game45-cbv4-pr,god-scheduler00-cbv4-pr
        service_description     interface
        check_command           check_net_god
	use                     generic-service
}

define service {
        host_name               god-game00-cbv4-pr,god-game01-cbv4-pr,god-game05-cbv4-pr,god-game06-cbv4-pr,god-game07-cbv4-pr,god-game08-cbv4-pr,god-game09-cbv4-pr,god-game10-cbv4-pr,god-game11-cbv4-pr,god-game12-cbv4-pr,god-game13-cbv4-pr,god-game14-cbv4-pr,god-game15-cbv4-pr,god-game16-cbv4-pr,god-game17-cbv4-pr,god-game18-cbv4-pr,god-game19-cbv4-pr,god-game20-cbv4-pr,god-game21-cbv4-pr,god-game22-cbv4-pr,god-game23-cbv4-pr,god-game24-cbv4-pr,god-game25-cbv4-pr,god-game26-cbv4-pr,god-game27-cbv4-pr,god-game28-cbv4-pr,god-game29-cbv4-pr,god-game30-cbv4-pr,god-game31-cbv4-pr,god-game37-cbv4-pr,god-game41-cbv4-pr,god-game42-cbv4-pr,god-game45-cbv4-pr
        service_description     process_gcserver
        check_command           check_snmp_procs!gcserver
        use                     generic-service
}

define service {
        host_name               god-game00-cbv4-pr,god-game01-cbv4-pr,god-game05-cbv4-pr,god-game06-cbv4-pr,god-game07-cbv4-pr,god-game08-cbv4-pr,god-game09-cbv4-pr,god-game10-cbv4-pr,god-game11-cbv4-pr,god-game12-cbv4-pr,god-game13-cbv4-pr,god-game14-cbv4-pr,god-game15-cbv4-pr,god-game16-cbv4-pr,god-game17-cbv4-pr,god-game18-cbv4-pr,god-game19-cbv4-pr,god-game20-cbv4-pr,god-game21-cbv4-pr,god-game22-cbv4-pr,god-game23-cbv4-pr,god-game24-cbv4-pr,god-game25-cbv4-pr,god-game26-cbv4-pr,god-game27-cbv4-pr,god-game28-cbv4-pr,god-game29-cbv4-pr,god-game30-cbv4-pr,god-game31-cbv4-pr,god-game37-cbv4-pr,god-game41-cbv4-pr,god-game42-cbv4-pr,god-game45-cbv4-pr,god-scheduler00-cbv4-pr
        service_description     process_gcupdate
        check_command           check_snmp_procs!GCUpdate
        use                     generic-service
}

define service {
        host_name               god-game00-cbv4-pr,god-game01-cbv4-pr,god-game05-cbv4-pr,god-game06-cbv4-pr,god-game07-cbv4-pr,god-game08-cbv4-pr,god-game09-cbv4-pr,god-game10-cbv4-pr,god-game11-cbv4-pr,god-game12-cbv4-pr,god-game13-cbv4-pr,god-game14-cbv4-pr,god-game15-cbv4-pr,god-game16-cbv4-pr,god-game17-cbv4-pr,god-game18-cbv4-pr,god-game19-cbv4-pr,god-game20-cbv4-pr,god-game21-cbv4-pr,god-game22-cbv4-pr,god-game23-cbv4-pr,god-game24-cbv4-pr,god-game25-cbv4-pr,god-game26-cbv4-pr,god-game27-cbv4-pr,god-game28-cbv4-pr,god-game29-cbv4-pr,god-game30-cbv4-pr,god-game31-cbv4-pr,god-game37-cbv4-pr,god-game41-cbv4-pr,god-game42-cbv4-pr,god-game45-cbv4-pr
        service_description     process_gpuanalyzer
        check_command           check_snmp_procs!gpuanalyzer
        use                     generic-service
	max_check_attempts              10
}


define service {
	host_name			god-data00-cbv4-pr
        service_description             Interface
        check_command                   check_eth!eth[1,3]
        use                             generic-service
}

define service {
	host_name          		god-data00-cbv4-pr
	service_description             CPU
        check_command                   check_cpu_load!11!11!12!15!15!16
        use                             generic-service
}

define service {
	host_name			god-data00-cbv4-pr
        service_description             Space_Disk
        check_command                   check_all_disk_snmp!80!90
        use                             generic-service
}

define service {
	host_name		god-data00-cbv4-pr	
        service_description     process_drbd
        check_command           check_snmp_procs!drbd
        use                     generic-service
}

define service {
	host_name		god-vip_scheduler-cbv4-pr		
        service_description     check_http
        check_command           check_url!http://10.111.221.1/portal/isAvailable.php
        use                     generic-service
}


#
#define service {
#	host_name		god-vip_scheduler-cbv4-pr		
#        service_description     process_apache
#        check_command           check_snmp_procs!apache
#        use                     generic-service
#}
#
#define service {
#	host_name		god-vip_scheduler-cbv4-pr		
#        service_description     process_xml-rpc
#        check_command           check_snmp_procs!xml-rpc
#        use                     generic-service
#}

# check that ssh services are running
define service {
        host_name                       god-proxy00-cbv4-pr,god-proxy01-cbv4-pr,god-proxy02-cbv4-pr,god-proxy03-cbv4-pr,god-proxy04-cbv4-pr,god-proxy05-cbv4-pr
        service_description             SSH
        check_command                   check_ssh
        use                             generic-service
}

# check that ping-only hosts are up
define service {
        host_name                       god-proxy00-cbv4-pr,god-proxy01-cbv4-pr,god-proxy02-cbv4-pr,god-proxy03-cbv4-pr,god-proxy04-cbv4-pr,god-proxy05-cbv4-pr
        service_description             PING
        check_command                   check_ping!100.0,20%!500.0,60%
        use                             generic-service
}

define service {
        host_name                       god-proxy00-cbv4-pr,god-proxy01-cbv4-pr,god-proxy02-cbv4-pr,god-proxy03-cbv4-pr,god-proxy04-cbv4-pr,god-proxy05-cbv4-pr
        service_description             CPU
        check_command                   check_cpu_load!4!4!3!8!8!7
        use                             generic-service
}

define service {
        use                     generic-service
        host_name                       god-proxy00-cbv4-pr,god-proxy01-cbv4-pr,god-proxy02-cbv4-pr,god-proxy03-cbv4-pr,god-proxy04-cbv4-pr,god-proxy05-cbv4-pr
        service_description             Check_mounted_usb_rofs
        check_command                   check_usb_god!%HOSTADDRESS%!rofs
}

define service {
        host_name                       god-proxy00-cbv4-pr,god-proxy01-cbv4-pr,god-proxy02-cbv4-pr,god-proxy03-cbv4-pr,god-proxy04-cbv4-pr,god-proxy05-cbv4-pr
        service_description             Space_Disk
        check_command                   check_all_disk_except_this_one!/rootfs!80!90
        use                             generic-service
}

define service {
        host_name                       god-proxy00-cbv4-pr,god-proxy01-cbv4-pr,god-proxy02-cbv4-pr,god-proxy03-cbv4-pr,god-proxy04-cbv4-pr,god-proxy05-cbv4-pr
        service_description             Interface
        check_command                   check_eth!eth[admin,middle,front]
        use                             generic-service
}

