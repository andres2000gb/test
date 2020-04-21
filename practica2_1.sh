#!/bin/bash
#775750, Espinosa Gonzalo, Angel, T, 2, A 
#777638, Gilgado Barrachina, Andres Maria, T, 2, A
read -p "Introduzca el nombre del fichero: " fichero
if [ ! -f "$fichero" ]
then
	echo "$fichero no existe"
	exit 85
fi
prueba=$(ls -l "$fichero")
echo "Los permisos del archivo $fichero son: ${prueba:1:3}"
exit 0;

