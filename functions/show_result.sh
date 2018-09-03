#!/bin/sh
show_result () {
	ip_address=`hostname -I  | sed -e "s/ //g"`
	
	echo ""
	echo " Transmission : "${blue}"http://"$ip_address":9091/transmission/web/${nc}   (username/password : transmission)"
	echo ""
}
