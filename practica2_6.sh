#!/bin/bash
#775750, Espinosa Gonzalo, Angel, T, 2, A
#777638, Gilgado Barrachina, Andres Maria, T, 2, A

cuenta=0
tmp_dir="h"
p1="~/"
com=$(find ~/ -type d | grep -E 'bin[[:alnum:]]{3}$')
if [ $? -ne 0  ]
then
	tmp_dir=$(mktemp -d ~/binXXX)
	echo "Se ha creado el directorio $tmp_dir"
	echo "Directorio destino de copia: $tmp_dir"
	for i in $(find . -executable -type f)
	do
		cp "$i" "$tmp_dir"
		echo "$i ha sido copiado a $tmp_dir"
		cuenta=$(($cuenta+1))
	done
	if [ $cuenta -ne 0 ]
	then
		echo "Se han copiado $cuenta archivos"
	else
		echo "No se ha copiado ningun archivo"
	fi
else
	tiempoP=0
	tiempF=0
	nFFIn="hola"
	tiempo=$(find ~/ -type d | grep -E 'bin[[:alnum:]]{3}$')
    echo "$tiempo"
	for i in $tiempo
	do
		if [ $tiempoP -eq 0 ]
		then
			tiempoP=$(($tiempoP+1))
			tiempoF=$(stat -c "%Y" "$i")
			nFFIn=$i
		else
			tiempopos=$(stat -c "%Y" "$i")
			if [ $tiempoF -lt $tiempopos ]
			then
				tiempoF=$tiempopos
				nFFIn=$i
			fi
		fi
	done
	echo "Directorio destino de copia: $nFFIn"
	for i in $(find . -executable -type f)
	do
		if [ ! -f "$nFFIn/$i" ]
		then
			cp "$i" "$nFFIn"
			echo "$i ha sido copiado a $nFFIn"
			cuenta=$(($cuenta+1))
		fi
	done

	if [ $cuenta -ne 0 ]
	then
      		echo "Se han copiado $cuenta archivos"	
	else
		echo "No se ha copiado ningun archivo"
	fi
fi
