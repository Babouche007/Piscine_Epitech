#! /bin/sh

while read line
do
	echo "$line" | tr "$2" "[a-z]"
done < "$1"
