#!/bin/bash
for (( i = 1; i < 2; i++ )); do
	(time %e ls) 2> out.txt
	time -o > time2.txt ./creadorDeVectors $i $RANDOM > VectorAleatori.txt
done