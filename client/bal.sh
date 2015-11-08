#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt
dialog  --inputbox  "enter amount of space required in MB"   10 30 2>/tmp/u.txt


nc 192.168.170.2 1239 < /tmp/u.txt
nc -l 1239 >/root/Desktop/v.txt
dialog --msgbox "are u sure" 10 30


yum install iscsi-initiator-utils -y ;  iscsiadm --mode discoverydb --type sendtargets --portal 192.168.170.2 --discover ; iscsiadm --mode node --targetname mycloudiqn --portal 192.168.170.2:3260 --login ; fdisk -cul ; mkfs.ext4 /dev/sdb ; mkdir /media/myblockst ; mount /dev/sdb  /media/myblockst 
