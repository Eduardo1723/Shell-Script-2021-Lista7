#!/bin/bash

while true
do
	read -p "Digite a opção: " a
	case $a in
		"d")
		for i in *
		do
		       	[ -d $i ] && echo $i
		done ;;

		"f") 
		for i in *
		do
			[ -f $i ] && [ ! -h $i ] && echo $i 	
		done ;;

		"v")
		read -p "digite o nome do arquivo: " b
		cat $b ;;

		"cd")
		read -p "digite o nome do diretorio: " b
		cd $b ;;

		"q") break ;;

		*) echo "opção invalida, digite novamente" ;;	
	esac
done
