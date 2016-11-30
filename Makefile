all: insercio bombolla fusio creadorDeVectors format n

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

n: n.cc
	g++ -o n n.cc

clean: insercio bombolla fusio creadorDeVectors format n
	rm insercio bombolla fusio creadorDeVectors format n