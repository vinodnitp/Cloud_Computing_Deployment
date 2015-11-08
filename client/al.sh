#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt
dialog  --inputbox  "enter amount of space required in MB"   10 30 2>/tmp/u.txt
a=`cat   /tmp/u.txt`

nc 192.168.170.2 1235 < /tmp/u.txt
iptables -F
setenforce 0
nc -l 1235 > /root/Desktop/v.txt
dialog --msgbox "are u sure" 10 30

yum install nfs-utils -y
umount /media/dropbox
rmdir /media/dropbox
mkdir /media/dropbox
setenforce 0 ; iptables -F ;

mount 192.168.170.2:media/lvst /media/dropbox
service nfs restart
service nfs restart
bash  /root/Desktop/stmanu.sh
