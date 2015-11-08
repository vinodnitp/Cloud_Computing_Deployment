#!/bin/bash

dialog  --infobox  "welcome to linux based storage"  10  30
 dialog --clear --backtitle "CLOUD SERVICES" --title "Cloud Storage" \
    --menu "Use [UP/DOWN] key to move" 12 60 5 \
    "Allocation"   "Allocate Block Space" \
    "Remove"   "Release space"\ 
    "EXIT"      "TO EXIT" 2> menuchoices.$$

    retopt=$?
    choice=`cat menuchoices.$$`

    case $retopt in

           0) case $choice in

                  Allocation)     ./bal.sh   ;;
                  Remove)      ./brm.sh ;;
                  EXIT)       clear; exit 0;;

              esac ;;

          *)clear ; exit ;;
    esac

