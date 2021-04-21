#!/bin/bash

while read a
do
	ping -c 1 $a
	if [ $? = 1 ]
	then
		echo "Não foi possivel acessar o ip: $a" >> err.txt
	fi	
done < ips.txt

echo -e "$(cat err.txt)\n"
rm err.txt
