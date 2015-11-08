login()
{
echo "1000" >/root/Desktop/select.txt
nc 192.168.170.2 1000 </root/Desktop/select.txt


dialog --infobox "--->>>***Welcome to Cloud***<<<---" 10 30
sleep 2
dialog --msgbox "Do you want to continue" 10 30
sleep 2



dialog   --inputbox  "enter user name "   10  30    2>/tmp/user.txt
dialog  --insecure  --passwordbox  "enter password "   10  30  2>/tmp/pass.txt

a=`cat /tmp/user.txt`
b=`cat /tmp/pass.txt`

echo "$a:$b" > /root/Desktop/tmp.txt
nc 192.168.170.2 1234 < /root/Desktop/tmp.txt

nc -l 1234 > /root/Desktop/auth.txt
c=`cat /root/Desktop/auth.txt`

if [ $c -eq 0 ];then
./mainmenu.sh
else
dialog --yesno "$c do you want to try again" 10 30
d=$?
   if [ $d -eq 0 ];then
   login
   else
   exit
   fi
fi
}
login
