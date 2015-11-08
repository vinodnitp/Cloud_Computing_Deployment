#!/bin/bash
iaas()
{
nc 192.168.170.2 1242 < /tmp/iaas.txt

OPTION=$(whiptail --title "Software Selection Dialog" --menu "Choose your option" 15 60 4 \
"1" "vnc" \
"2" "novnc" \
"3" "migration" \
"4" "exit"  3>&1 1>&2 2>&3)

 
 


 if [ $OPTION -eq 1 ];then
./vnc.sh
elif [ $OPTION -eq 2 ];then
./novnc.sh
elif [ $OPTION -eq 3 ];then
./migration.sh
else
exit
fi

#nc -l 1000 >/root/desktop/c.txt
}
iaas
bash  /root/Desktop/mainmenu.sh
