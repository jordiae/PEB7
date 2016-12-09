#!/bin/bash

make clean
make best_worst
cp config.txt n.in
line=$(head -n 1 n.in)
for (( i = 0; i < line; i++ )); do
	./n $i < n.in > n.out
	./PitjorCasoBombollaiInsercio < n.out > VectorPitjorCasBombollaiInsercio.txt
	./PeorCasoFusio < n.out > VectorPitjorCasFusio.txt
	./MillorCasoBombollaiInsercioiFusio < n.out > MillorCasoBombollaiInsercioiFusio.txt
	cat n.out >> out.txt
	(/usr/bin/time -f "%e" ./insercio < VectorPitjorCasBombollaiInsercio.txt) 2>>out.txt
	(/usr/bin/time -f "%e" ./bombolla < VectorPitjorCasBombollaiInsercio.txt) 2>>out.txt
	(/usr/bin/time -f "%e" ./fusio < VectorPitjorCasFusio.txt) 2>>out.txt
	(/usr/bin/time -f "%e" ./insercio < MillorCasoBombollaiInsercioiFusio.txt) 2>>out.txt
	(/usr/bin/time -f "%e" ./bombolla < MillorCasoBombollaiInsercioiFusio.txt) 2>>out.txt
	(/usr/bin/time -f "%e" ./fusio < MillorCasoBombollaiInsercioiFusio.txt) 2>>out.txt
done
./format_best_worst_cases < out.txt >> data_best_worst_cases.txt
make clean
rm n.in n.out out.txt VectorPitjorCasBombollaiInsercio.txt VectorPitjorCasFusio.txt MillorCasoBombollaiInsercioiFusio.txt
echo "Done. The results have been stored in data_best_worst_cases.txt"
cat data_best_worst_cases.txt