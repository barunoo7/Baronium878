#!/bin/sh
#read -p "Enter the path to a file or a directory: " FILE

FOR FILR IN $@
DO
FILE=$1
if [ -f "$FILE" ]
then 
  echo "$FILE is a regular file."
elif [ -d "$FILE" ]
then 
   echo "$FILE is a directory"
else
  echo "$FILE is something other than a regular file or directory."
fi
 ls -l $FILE
DONE