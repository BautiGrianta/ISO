#!/bin/bash

for ((i=1; i<=100; i++))
do
	echo $i
	echo Su cuadrado es: `expr $i \* $i`
done
exit 0
