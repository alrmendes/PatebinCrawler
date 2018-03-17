#!/bin/sh


TEXT="$1"
FOLDER="$2"
echo "$TEXT $FOLDER"
FILES=$(grep $TEXT $FOLDER/* | cut -d ":" -f 1 | sort -u)
echo $FILES
echo "Remove"
read toRemove

if [ "$toRemove" = "y" ]; then
	rm -f $FILES
fi
