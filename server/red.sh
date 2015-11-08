#!/bin/bash
iptables -F ; setenforce 0 ;
nc -l 1237 > /root/Desktop/a.txt
a=`cat /root/Desktop/a.txt`

service nfs restart ; umount  /media/lvst ; e2fsck  -f  /dev/vgl/mylv ; echo y | resize2fs  /dev/vgl/mylv   $a ; echo  y | lvreduce  --size  $a  /dev/vgl/mylv ; mount  dev/vgl/mylv    /media/lvst ; service nfs restart ;


nc 192.168.170.5 1237 < /root/Desktop/a.txt
