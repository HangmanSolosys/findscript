#!/bin/bash

clear

echo " WARRNING: THIS SCRIPT WILL RUN UNTIL YOU USE CTRL + C TO KILL IT "

prompt_user() {
	
	read -p "Hello, please provide me with a filename to search: " check



echo

echo "looking for $check"



echo

where=$(find / -name $check) &>/dev/null



echo

if [ $? -eq 0 ]; then

	echo "we found the $check file in $where"

else
	echo "Error, file not found"

fi

echo 

}

prompt_user

while [ true ] 

do

prompt_user

done
