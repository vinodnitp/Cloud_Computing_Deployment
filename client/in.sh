#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt
dialog  --inputbox  "Enter increase required space in MB"   10 30 2>/tmp/u.txt



nc 192.168.170.2 1236 < /tmp/u.txt
nc -l 1236 >/root/Desktop/v.txt
dialog --msgbox "are u sure" 10 30


