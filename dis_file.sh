#!/bin/bash
echo "Enter the pattern "
read pattern
rm name_of_file
grep -Rl "$pattern" * > name_of_file 
count=`cat -n name_of_file | wc -l`
if [ $count -eq 0 ]
then
	echo "Error: no files contains the given pattern"
	#cat name_of_file
else
	#echo "Error: No files contain pattern"
	cat name_of_file
fi


