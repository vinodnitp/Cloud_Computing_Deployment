#!/bin/bash
nc -l 1242   > /root/Desktop/iaas.txt
d=`cat /root/Desktop/iaas.txt`
if [ $d -eq 0 ];then
sleep 15
iptables -F ; setenforce 0
 echo "ok"  | nc 192.168.170.5 1242
else
a=`cut -d: -f1 /root/Desktop/iaas.txt`
b=`cut -d: -f2 /root/Desktop/iaas.txt`
c=`cut -d: -f3 /root/Desktop/iaas.txt`

virt-install --name=rhel6lwusb --ram=$a --vcpus=$c --os-type=linux --os-variant=rhel6 --disk path=/root/Desktop/myrhel6.img,size=$b  --location=ftp://192.168.170.2/pub/RHEL/ --extra-args="ks=ftp://192.168.170.2/pub/v.cfg"

sleep 15
iptables -F ; setenforce 0
 echo "ok"  | nc 192.168.170.5 1242
fi


