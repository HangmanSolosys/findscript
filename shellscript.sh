#!/bin/bash

clear

echo " WARRNING: THIS SCRIPT WILL RUN UNTIL YOU USE CTRL + C TO KILL IT "

prompt_user() {
	
	read -p "Hello, please provide me with a filename to search: " check



echo

echo "looking for $check"



echo

where=$(find / -name "$check" 2>/dev/null) 



echo

if [ -n "$where" ]; then

	echo "we found the $check file in $where"


else
	echo "Error, file not found"

fi

echo 

}



while [ true ] 

	do

		prompt_user

done
