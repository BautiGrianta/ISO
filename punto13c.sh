#!/bin/bash
if [ $# -ne 1 ]; then
	echo ingrese 1 parametro
	exit 1
else
	if [ -e $1 ]; then
		if [ -f $1 ]; then
			echo es un archivo
		else
			echo es un directorio
		fi
	else
		mkdir $1
	fi
fi
exit 0

