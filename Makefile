all: insercio bombolla fusio creadorDeVectors MillorCasInsercioBombollaFusio PeorCasoFusio PitjorCasoBombollaiInsercio

insercio: insercio.cc
	g++ -o insercio insercio.cc

bombolla: bombolla.cc
	g++ -o bombolla bombolla.cc

fusio: fusio.cc
	g++ -o fusio fusio.cc

creadorDeVectors: creadorDeVectors.cc
	g++ -o creadorDeVectors creadorDeVectors.cc

MillorCasInsercioBombollaFusio: MillorCasoBombollaiInsercioiFusio.cc
	g++ -o MillorCasoBombollaiInsercioiFusio MillorCasoBombollaiInsercioiFusio.cc

PeorCasoFusio: PeorCasoFusio.cc
	g++ -o PeorCasoFusio PeorCasoFusio.cc

PitjorCasoBombollaiInsercio: PitjorCasoBombollaiInsercio.cc
	g++ -o PitjorCasoBombollaiInsercio PitjorCasoBombollaiInsercio.cc

clean: insercio bombolla fusio creadorDeVectors PitjorCasoBombollaiInsercio MillorCasoBombollaiInsercioiFusio PeorCasoFusio 
	rm insercio bombolla fusio creadorDeVectors PitjorCasoBombollaiInsercio MillorCasoBombollaiInsercioiFusio PeorCasoFusio