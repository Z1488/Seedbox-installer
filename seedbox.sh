#!/bin/sh
if [ $USER != "root" ] ; then
	echo ""
	echo " This script must be run as root !"
	echo ""
	
	exit
fi

if ! ping -c 1 google.com >> /dev/null 2>&1 ; then
	echo ""
	echo " You are not connected to internet please check your connection !"
	echo ""
	
	exit
fi

. functions/functions.sh

green="\033[1;32m"
blue="\033[1;34m"
orange="\033[0;33m"
red="\033[1;31m"
nc="\033[0m"

step=1

fix_locale
	
update_upgrade_system

install_transmission

configure_transmission
		
show_result
