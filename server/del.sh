#!/bin/bash
iptables -F ; setenforce 0 
nc -l 1238 > /root/Desktop/a.txt
a=`cat /root/Desktop/a.txt`
 if [ $a -eq 0 ] ; then
service nfs restart ; umount  /media/lvst ; echo y | lvremove  /dev/vgl/mylv 
nc 192.168.170.5 1238 < /root/Desktop/a.txt
else
echo "bye"
fi
