#!/bin/bash
#775750, Espinosa Gonzalo, Angel, T, 2, A
#777638, Gilgado Barrachina, Andres Maria, T, 2, A
if [ $# -ne 1 ];
then
	echo "Sintaxis: practica2_3.sh <nombre_archivo>"
	exit 1
fi
if [ ! -f "$1" ];
then
	echo "$1 no existe"
	exit 1
fi
chmod a+x "$1"
stat -c "%A" "$1"
