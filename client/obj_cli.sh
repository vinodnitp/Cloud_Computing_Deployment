yum install nfs-utils 


dialog  --infobox  "welcome to linux based storage"  10  30
 dialog --clear --backtitle "CLOUD SERVICES" --title "Cloud Storage" \
    --menu "Use [UP/DOWN] key to move" 12 60 5 \
    "Allocation"   "Allocate Space" \
    "Remove"   "Release space"\
    "Increase"   "Increase space"\
"Decrease"   "Decrease space"\ 
    "EXIT"      "TO EXIT" 2> menuchoices.$$

    retopt=$?
    choice=`cat menuchoices.$$`

    case $retopt in

           0) case $choice in

                  Allocation)     ./al.sh   ;;
                  Remove)      ./rm.sh ;;
                  Increase)      ./in.sh ;;
                  Decrease)      ./de.sh ;;
                  EXIT)       clear; exit 0;;

              esac ;;

          *)clear ; exit ;;
    esac


