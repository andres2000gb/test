#!/bin/bash
#775750, Espinosa Gonzalo, Angel, T, 2, A
#777638, Gilgado Barrachina, Andres Maria, T, 2, A
for i in "$@";
do
    if [ ! -f "$i" ];
	then
		echo "$i no es un fichero"
	else
		more "$i"
	fi
done


