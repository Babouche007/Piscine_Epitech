#! /bin/sh

read -p "Ener the city that you are intrested in: " city 
declare -i students=0
if [ -z $city ]
then
	while read line
	do
		students=$((students+1))
	done < students.csv
else
	while IFS=";" read -r column1 column2 column3
	do
		if [ $city = $column3 ]
		then
			students=$((students+1))
		fi
	done < students.csv
fi
echo $students
