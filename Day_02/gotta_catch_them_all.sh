#! /bin/sh

read -p "Enter the lastname that you are intrested in: " name

declare -i students=0
if [ -z $name ]
then
	while read line
	do
		students=$((students+1))
	done < students.csv
else
	while IFS=";" read -r column1 column2 column3
	do
		if [ ("%s_*",$name) = $column3 ]
		then
			students=$((students+1))
		fi
	done < students.csv
fi
echo $students
