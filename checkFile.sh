#!/bin/bash
# ......
#
# This script will check the permissions of any directory
# We would want to check to see that the directory exists first
#
echo -n "Please select file type you want to check: "
read filetype

if [ -d $filetype ]
 then echo "$filetype is a directory"
   echo -n "Do you want to see the permissions of $filetype? "
   read answer
     if [ $answer = "yes" ] || [ $answer = 'y' ]
        then
          echo "Doing listing of : $filetype"
          ls -ld $filetype
      fi

elif [ -L $filetype ]
then
     echo "$filetype is a symbolic link"
     echo "The Original file is `ls -l $filetype | awk '{print $11}'`"
     echo "The file size is `ls -l $filetype | awk '{print $5}'` bytes"
     echo "The owner is `ls -l $filetype | awk '{print $3}'`"

elif [ -f $filetype ]
then
     echo "$filetype is a file"
     echo -n "Do you want to see the permissions of: $filetype? "
     read answer
     if [ $answer = "yes" ] || [ $answer = "y" ]
           then
                echo "Doing listing of: $filetype"
                ls -lh $filetype

     fi
else
     echo "$filetype is not a file or directory!"
fi
