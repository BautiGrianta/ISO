#!/bin/bash
if [ $# -ne 0 ]; then
	echo no debe ingresar parametros
	exit 1
fi

select action in Listar DondeEstoy QuienEsta Salir
do
case $action in
	"Listar")
		echo `ls`
	;;
	"DondeEstoy")
		echo `pwd`
	;;
	"QuienEsta")
		echo "$(users)"
	;;
	"Salir")
		exit 0
	;;
esac
done
