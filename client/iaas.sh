#!/bin/bash
#echo "1" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt

dialog --infobox "welcome to IAAS services"  10  40
sleep 2
dialog --yesno "Do you want to install" 10 30
if [ $? -eq 0 ];then
dialog --msgbox "press ok to continue " 5 30
dialog --inputbox "please enter RAM in MB" 10 50  2> /tmp/ram.txt 
dialog --inputbox "please enter HardDisk in MB" 10 50  2> /tmp/hd.txt
dialog --inputbox "please enter cpu's" 10 50  2> /tmp/cpu.txt
r=`cat /tmp/ram.txt`
h=`cat /tmp/hd.txt`
c=`cat /tmp/cpu.txt`
echo "$r:$h:$c" >/tmp/iaas.txt
i=`cat /tmp/iaas.txt`
nc 192.168.170.2 1242 < /tmp/iaas.txt

bash iaas2.sh
else
echo "0" >/tmp/iaas.txt
bash iaas2.sh
fi
bash  /root/Desktop/mainmenu.sh
