#!/bin/bash

#echo $#;

if [ $# -lt 1 ]; then
	echo "no action performed since no arguments provided"
	exit 0
fi
while (( "$#" )); do
  	case "$1" in
		on)
			sudo cp maintenance.html.tpl /etc/nginx/html/maintenance.html        
			echo "maintenace mode is turned on"
        		shift
        		;;
     		off)
        		sudo rm /etc/nginx/html/maintenance.html
			echo "maintenance mode is turned off"
        		shift
        		;;
      		*)
			echo "unknown arguments"
			shift
        		;;
  	esac
done
