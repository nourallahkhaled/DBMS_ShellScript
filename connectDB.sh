#!/bin/bash 
export LC_COLLATE=C  #To sort ascii character
shopt -s extglob     #import extended pattern matching RegEx

echo -e "\nDatabases To Connect"
ls -F ./DBMS | grep / 
echo -e "Please Enter Database Name: "
read database

	if [ -d ./DBMS/$database ]
	then
		echo -e "$database exists and you are in it now"
		cd ./DBMS/$database
		. ../../tableMenu.sh
	else
		echo -e "$database doesn't exist"
		. ./connectDB.sh
fi

