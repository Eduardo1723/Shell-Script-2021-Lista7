#!/bin/bash

while true
do	
	read -p "Digite: " a
	case $a in
		"logica")        
		echo "Parâmetros lógicos do test:"
		echo "-a => significa 'e'"
		echo "-o => siginifica 'ou'"
		echo -e "!  => significa 'não'\n" ;;

		"aritmetica")
		echo "Parâmetros Aritmeticos do test:"
		echo "-gt => mostra que o número é maior que"
		echo "-lt => mostra que o número é menor que"
		echo "-ge => mostra que o número é maior igual"
		echo "-le => mostra que o número é menor igual"
		echo "-eq => mostra que os números são iguais"	
		echo -e "-ne => mostra que os números são diferentes\n" ;;	
	
		"strings")
		echo "Parâmetros de Strings do test:"
		echo "=  => mostra que as strings são iguais"
		echo -e "!= => mostra que as strings são diferentes\n" ;;
					
		"variaveis")
		echo  "Parâmetros de variaveis do test:"
		echo "-z => mostra que a string é nula"
		echo -e "-n => mostra que a string não é nula\n" ;;

		"arquivos")
		echo "Parâmetros de Arquvios do test:"
		echo "-f => mostra que o arquivo existe e é regular"
		echo "-e => mostra que o arquivo existe"
		echo "-d => mostra que o arquivo existe e é um diretorio"
		echo "-h => mostra que o arquivo existe e é um link simbolico"
		echo "-x => mostra que o arquivo existe e tem permissão de execução"
		echo "-w => mostra que o arquivo existe e tem permissão de gravação"
		echo -e "-r => mostra que o arquivo existe e tem permissão de leitura\n" ;;

		"extended")
		echo -e "[[]] => é uma extensão melhorada do POSIX padrão e é suportado pelos shells mais modernos e na maior parte, é apenas uma sintaxe melhorada pro comando test. A principal diferença é que os operadores == e != correspondem a um padrão, em vez de uma string literal\n" ;;
		
		"sair")
		break ;;
		
		*)
		echo "parâmetro do comando test não encontrado" ;;
	esac
done
