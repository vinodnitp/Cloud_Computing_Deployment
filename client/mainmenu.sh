#!/bin/bash



    dialog --clear --backtitle "CLOUD SERVICES" --title "MAIN MENU" \
    --menu "Use [UP/DOWN] key to move" 12 60 4 \
    "SAAS"      "SOFTWARE AS A SERVICE" \
    "STAAS"     "STORAGE AS A SERVICE" \
    "IAAS"      "INFRASTRUCTURE AS A SERVICE" \
    "EXIT"      "TO EXIT" 2> menuchoices.$$

    retopt=$?
    choice=`cat menuchoices.$$`

    case $retopt in

           0) case $choice in

                  SAAS)       ./smenu.sh ;;
                  STAAS)       ./stmenu.sh;;
                  IAAS)       ./iaas.sh ;;
                  EXIT)       clear; exit 0;;

              esac ;;

          *)clear ; exit ;;
    esac

