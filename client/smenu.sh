#!/bin/bash

OPTION=$(whiptail --title "Software Selection Dialog" --menu "Choose your option" 15 60 4 \
"1" "Firefox" \
"2" "Gnome Terminal" \
"3" "Adobe Reader" \
"4" "Notepad"  3>&1 1>&2 2>&3)

if [ $OPTION = 1 ];then
 sshpass -p redhat ssh -X -l root 192.168.170.2 firefox
elif [ $OPTION = 2 ];then
 sshpass -p redhat ssh -X -l root 192.168.170.2 gnome-terminal
elif [ $OPTION = 3 ];then
 sshpass -p redhat ssh -X -l hemant 192.168.170.2 `wine /root/.wine/drive_c/Program\ Files/Adobe/Reader\ 11.0/Reader/AcroRd32.exe` 
else
 sshpass -p redhat ssh -X -l root 192.168.170.2 `wine /root/.wine/drive_c/windows/system32/notepad.exe` 
fi
bash  /root/Desktop/mainmenu.sh
