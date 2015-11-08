#!/bin/bash
nc -l 1235 > /root/Desktop/a.txt
a=`cat /root/Desktop/a.txt`

service nfs restart ; service nfs restart ; umount  /media/lvst ; echo y | lvremove  /dev/vgl/mylv 

lvcreate --size $a  --name mylv vgl ; lvdisplay  /dev/vgl/mylv ; mkfs.ext4  /dev/vgl/mylv ; mkdir  /media/lvst ; mount  /dev/vgl/mylv  /media/lvst ; yum install nfs-utils  -y;  echo "/media/lvst  *(rw,no_root_squash)"  1>>/etc/exports ; service nfs restart ; iptables -F ; setenforce 0 ;
nc 192.168.170.5 1235 < /root/Desktop/a.txt
