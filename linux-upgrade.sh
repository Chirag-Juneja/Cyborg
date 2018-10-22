#!/bin/bash
# upgrade the system

FONT_BLUE='\e[0;36m'
FONT_YELLOW='\e[0;33m'
FONT_RED='\e[0;31m'
FONT_GREEN='\e[0;32m'

welcome(){
	echo -e $FONT_YELLOW
	echo "Welcome $USER,"
	echo "Initializing system upgrade..."
}

check_status(){
	if [ $? -eq 0 ]
	then
	        echo -e $FONT_GREEN
	        echo "Process Completed!"
	else
	        echo -e $FONT_RED
	        echo "[ERROR] Process Failed!"
		exit 1
	fi
}

update(){

	echo -e $FONT_YELLOW
	echo "sudo apt-get update ..."
	echo -e $FONT_BLUE
	sudo apt-get update;
	check_status

	echo -e $FONT_YELLOW
	echo "sudo apt-get upgrade ..."
	echo -e $FONT_BLUE
	sudo apt-get upgrade -y;
	check_status

	echo -e $FONT_YELLOW
	echo "sudo apt-get dist-upgrade ..."
	echo -e $FONT_BLUE
	sudo apt-get dist-upgrade -y;
	check_status
}

cleanup(){

	echo -e $FONT_YELLOW
	echo "sudo apt-get autoremove ..."
	echo -e $FONT_BLUE
	sudo apt-get autoremove -y;
	check_status

	echo -e $FONT_YELLOW
	echo "sudo apt-get autoclean ..."
	echo -e $FONT_BLUE
	sudo apt-get autoclean -y;
	check_status

	echo -e $FONT_YELLOW
	echo "sudo updatedb ..."
	echo -e $FONT_BLUE
	sudo updatedb;
	check_status
}

end(){
	echo -e $FONT_GREEn
	echo "System Upgrade Completed!"
	echo "Bye! $USER"
}

welcome
update
cleanup
end
