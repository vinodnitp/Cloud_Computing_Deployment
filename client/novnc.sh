iptables -F
setenforce 0
nc -l 1243 >/root/Desktop/c.txt

#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt


#bash /root/Downloads/websockify-master/run 4000 192.168.170.2:5910
a=`cat /root/Desktop/c.txt`

dialog --msgbox "$a" 10 30
