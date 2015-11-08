#echo "1000" >/root/Desktop/select.txt
#nc 192.168.170.2 1000 </root/Desktop/select.txt

nc -l 1245 >/root/Desktop/c.txt
a=`cat /root/Desktop/c.txt`
dialog --msgbox "$a" 10 30 

service httpd restart
service httpd restart

iptables -F
setenforce 0

mkdir /root/Desktop/mydata
mount 192.168.170.2:/root/Desktop /root/Desktop/mydata

cp /root/Desktop/rhel6lwusb.xml /etc/libvirt/qemu
virsh define /etc/lbvirt/qemu/rhel6lwusb.xml
service libvirtd restart

virt-viewer rhel6lwusb

