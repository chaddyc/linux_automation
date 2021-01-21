# source: https://forum.proxmox.com/threads/removing-deleting-a-created-cluster.18887/
#!/bin/sh
# stop service
systemctl stop pvestatd.service
systemctl stop pvedaemon.service
systemctl stop pve-cluster.service
systemctl stop corosync
systemctl stop pve-cluster

# edit through sqlite, check, delete, verify
$ sqlite3 /var/lib/pve-cluster/config.db
sqlite> select * from tree where name = 'corosync.conf';
254327|0|254329|0|1480944811|8|corosync.conf|totem {
version: 2
[...]
sqlite> delete from tree where name = 'corosync.conf';
sqlite> select * from tree where name = 'corosync.conf';
sqlite> .quit
#

#Remove directories
pmxcfs -l
rm -r /etc/pve/corosync.conf
rm -r /etc/corosync/*
rm -r /var/lib/corosync/*