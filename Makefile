all: insercio bombolla fusio creadorDeVectors

insercio: insercio.cc
	g++ -o insercio insercio.cc

bombolla: bombolla.cc
	g++ -o bombolla bombolla.cc

fusio: fusio.cc
	g++ -o fusio fusio.cc

creadorDeVectors: creadorDeVectors.cc
	g++ -o creadorDeVectors creadorDeVectors.cc

clean: insercio bombolla fusio creadorDeVectors
	rm insercio bombolla fusio creadorDeVectors