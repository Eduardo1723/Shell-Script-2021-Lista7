#!/bin/bash

while [ ! -f /tmp/chave.txt ]
do
	date
	sleep 2
	if [ -f /tmp/chave.txt ]
	then
		break
	fi
done
rm /tmp/chave.txt
