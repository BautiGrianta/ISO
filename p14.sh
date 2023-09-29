#!/bin/bash
if [ $# -ne 3 ]; then
	echo se deben ingresar 3 parametros
	exit 1
elif ! [ -d $1 ]; then
	echo debe ingresar un directorio
	exit 1
elif [ $2 != "-a" ]  && [ $2 != "-b" ]; then
	echo el segundo parametro debe ser -a o -b
	exit 1
else
	case $2 in
		"-a")
			for file in $(ls $1);
			do
				if [ -f $file ]; then
					mv $file $file$3
				fi
			done
		;;
		"-b")
			for file in $(ls $1);
			do
				if [ -f $file ]; then
					mv $file $3$file
				fi
			done
		;;
	esac
fi
exit 0
