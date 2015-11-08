#!/bin/bash
iptables -F ; setenforce 0 ;
nc -l 1239 > /root/Desktop/a.txt
a=`cat /root/Desktop/a.txt`

service nfs restart ; umount  /media/lvst ; echo y | lvremove  /dev/vgl/mylv

lvcreate --size $a  --name mylv vgl ; lvdisplay  /dev/vgl/mylv ; yum install scsi-target-utils ; service tgtd restart ; service tgtd restart ; iptables -F ; setenforce 0 ;
nc 192.168.170.5 1239  < /root/Desktop/a.txt
