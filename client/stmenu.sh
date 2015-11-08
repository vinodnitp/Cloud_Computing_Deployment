
#!/bin/bash
dialog  --infobox  "welcome to linux based storage"  10  30
 dialog --clear --backtitle "CLOUD SERVICES" --title "Cloud Storage" \
    --menu "Use [UP/DOWN] key to move" 12 60 3 \
    "Object_Storage"   "OBJECT STORAGE" \
    "Block_Storage"    "BLOCK STORAGE"\
    "EXIT"      "TO EXIT" 2> menuchoices.$$

    retopt=$?
    choice=`cat menuchoices.$$`

    case $retopt in

           0) case $choice in

                  Object_Storage)     ./object_client.sh   ;;
                  Block_Storage)      ./block_client.sh ;;
                  EXIT)       clear; exit 0;;

              esac ;;

          *)clear ; exit ;;
    esac
bash  /root/Desktop/mainmenu.sh
