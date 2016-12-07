all: insercio bombolla fusio creadorDeVectors format n PitjorCasoBombollaiInsercio MillorCasoBombollaiInsercioiFusio PeorCasoFusio format_best_worst_cases

random: insercio bombolla fusio format creadorDeVectors n

best_worst: insercio bombolla fusio format_best_worst_cases n PitjorCasoBombollaiInsercio MillorCasoBombollaiInsercioiFusio PeorCasoFusio

insercio: insercio.cc
	g++ -o insercio insercio.cc

bombolla: bombolla.cc
	g++ -o bombolla bombolla.cc

fusio: fusio.cc
	g++ -o fusio fusio.cc

creadorDeVectors: creadorDeVectors.cc
	g++ -o creadorDeVectors creadorDeVectors.cc

format: format.cc
	g++ -o format format.cc
	
format_best_worst_cases: format_best_worst_cases.cc
	g++ -o format_best_worst_cases format_best_worst_cases.cc

n: n.cc
	g++ -o n n.cc

MillorCasInsercioBombollaFusio: MillorCasoBombollaiInsercioiFusio.cc
	g++ -o MillorCasoBombollaiInsercioiFusio MillorCasoBombollaiInsercioiFusio.cc

PeorCasoFusio: PeorCasoFusio.cc
	g++ -o PeorCasoFusio PeorCasoFusio.cc

PitjorCasoBombollaiInsercio: PitjorCasoBombollaiInsercio.cc
	g++ -o PitjorCasoBombollaiInsercio PitjorCasoBombollaiInsercio.cc

clean: insercio bombolla fusio creadorDeVectors format n PitjorCasoBombollaiInsercio MillorCasoBombollaiInsercioiFusio PeorCasoFusio format_best_worst_cases
	rm insercio bombolla fusio creadorDeVectors format n PitjorCasoBombollaiInsercio MillorCasoBombollaiInsercioiFusio PeorCasoFusio format_best_worst_cases