#! /bin/sh

while read line
do
	echo "$line" | tr '[a-z]' "$2"
done < "$1"
