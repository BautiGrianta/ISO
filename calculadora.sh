#!/bin/bash

#validacion de parametros
if [ $# -ne 3 ]; then
	echo se esperaban 3 parametros
	exit 1
fi

case $3 in
	"+")
		echo `expr $1 + $2`
	;;
	"-")
		echo `expr $1 - $2`
	;;
	"*")
       		echo `expr $1 \* $2`
	;;
	"/")
		echo `expr $1 / $2`
	;;
	"%")
		echo `expr $1 % $2`
	;;
	*)
		echo no se conoce el operador $3
		exit 1
	;;
esac	
exit 0
