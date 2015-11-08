#!/bin/bash
iptables -F ; setenforce 0 ;
nc -l 1236 > /root/Desktop/a.txt
a=`cat /root/Desktop/a.txt`


lvextend  --size  +$a  /dev/vgl/mylv ; lvdiplay  /dev/vgl/mylv ; resize2fs   /dev/vgl/mylv ;
service nfs restart ;
nc 192.168.170.5 1236 < /root/Desktop/a.txt
