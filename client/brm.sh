#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt
dialog --yesno "are you sure" 10 30
c=$?
if [ $c -eq 0 ];then
echo "0" >/root/Desktop/a.txt 
nc 192.168.170.2 1240 </root/Desktop/a.txt
else 
exit
fi
