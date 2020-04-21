#!/bin/bash
#775750, Espinosa Gonzalo, Angel, T, 2, A
#777638, Gilgado Barrachina, Andres Maria, T, 2, A
read -p "Introduzca el nombre de un directorio: " dir
if [ ! -d "$dir" ]
then
	echo "$dir no es un directorio"
	exit 1
fi
numF=$(find "$dir" -maxdepth 2 -type f | wc -l)
numD=$(find "$dir" -maxdepth 1 -type d | wc -l)
numD=$((numD-1))
echo "El numero de ficheros y directorios en $dir es de $numF y $numD, respectivamente"
