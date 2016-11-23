#!/bin/bash

make clean
make all
for (( i = 0; i < $#; i++ )); do
	for (( j = 0; j < 1; j++ )); do
		echo $i >> time.txt
		echo -e Hola \n >> time.txt
		./creadordeVectors > VectorAleatori.txt
		$i
		time %E ./insercio --output=time.txt --append
		time %E ./bombolla --output=time.txt --append
		time %E ./fusio --output=time.txt --append
		
	done
done
make clean