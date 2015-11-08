#!/bin/bash
iptables -F ; setenforce 0
nc -l 1234 > /root/Desktop/tempacc.txt
a=`cat /root/Desktop/tempacc.txt`

grep -x "$a" /root/Desktop/acc.txt
c=$?
if [ $c -eq 0 ];then
echo "0" >/root/Desktop/a.txt
nc 192.168.170.5 1234 <  /root/Desktop/a.txt

else
m="please check ur username and password"
echo "$m" >/root/Desktop/a.txt
nc 192.168.170.5 1234 </root/Desktop/a.txt

fi
