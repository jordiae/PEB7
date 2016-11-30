#!/bin/bash

make clean
make all
cp config.txt n.in
for (( i = 0; i < 5; i++ )); do
	./n $i < n.in > n.out
	./creadorDeVectors < n.out $RANDOM > VectorAleatori.txt
	cat n.out >> out.txt
	(/usr/bin/time -f "%e" ./insercio < VectorAleatori.txt) 2>>out.txt
	(/usr/bin/time -f "%e" ./bombolla < VectorAleatori.txt) 2>>out.txt
	(/usr/bin/time -f "%e" ./fusio < VectorAleatori.txt) 2>>out.txt
done
./format < out.txt >> data.txt
make clean
rm n.in n.out out.txt VectorAleatori.txt
echo "Done. The results have been stored in data.txt"
cat data.txt