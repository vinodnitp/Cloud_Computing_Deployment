#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt
dialog  --inputbox  "Enter required space in MB"   10 30 2>/tmp/u.txt
a=`cat   /tmp/u.txt`


nc 192.168.170.2 1237 < /tmp/u.txt


nc -l 1237 >/root/Desktop/v.txt
dialog --msgbox "are u sure" 10 30

setenforce 0 ; iptables -F ;
service nfs restart
umount /media/dropbox
mount 192.168.170.2:media/lvst /media/dropbox


