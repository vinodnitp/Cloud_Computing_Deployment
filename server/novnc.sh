#!/bin/bash
iptables -F
setenforce 0
echo "192.168.170.5:5000" >/root/Desktop/novnc.txt
nc 192.168.170.5 1243 </root/Desktop/novnc.txt 
