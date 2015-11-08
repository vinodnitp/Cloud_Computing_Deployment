#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt

dialog  --yesno  "do you no longer want to use allocated space"   10 30 
a=$?
sudo echo $a >/root/Desktop/v.txt


nc 192.168.170.2 1238 < /root/Desktop/v.txt
service nfs restart
umount /media/dropbox
killall gnome-terminal







