#!/bin/bash
ls -lt > file_list
n=1
while read line
do 
	if [ $n -gt 1 ]
	then
	size=`echo "$line" | awk '{print $5 }'`
	if [ $size -gt 0 ]
	then
	echo "$line" | awk '{ print $NF}' 
	fi
	fi
	n=`expr $n + 1`
done < file_list

