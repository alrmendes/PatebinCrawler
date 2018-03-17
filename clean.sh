#!/bin/bash

FOLDER=$1
INTERESTING="interesting"
if [ ! -d $FOLDER ] || [ "$1" = "" ]; then
	echo "This folder does not exist..."
	exit 1
fi


for FILE in `ls $FOLDER`; do
	echo $FILE
	cat $FOLDER/$FILE
	echo "---------------------------------------------------------------------"
	echo "To remove?[y/n]"
	read var
	if [ "$var" = "y" ]; then
		rm -f $FOLDER/$FILE
	else
	       read -p "New name:" name

		mv $FOLDER/$FILE $INTERESTING/$name.txt
	fi
done 


