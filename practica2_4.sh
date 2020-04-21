#!/bin/bash
#775750, Espinosa Gonzalo, Angel, T, 2, A
#777638, Gilgado Barrachina, Andres Maria, T, 2, A
read -n1 -p "Introduzca una tecla: " tecla
if [[ $tecla == [A-Za-z] ]]
then
	echo -e "\n$tecla es una letra"
	exit 0
fi
if [[ $tecla == [0-9] ]]
then
	echo -e "\n$tecla es un numero"
	exit 0
fi
echo -e "\n$tecla es un caracter especial"
