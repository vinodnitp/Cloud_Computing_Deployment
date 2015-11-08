
#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt
nc -l 1242 >/root/Desktop/c.txt
iptables -F
dialog --msgbox "successful" 10 20 
setenforce 0
vncviewer 192.168.170.2:5910
