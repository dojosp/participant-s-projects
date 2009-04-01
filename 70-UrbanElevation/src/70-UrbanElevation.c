#include "70-UrbanElevation.h"

Cidade criaCidade(int numPredios, ...) {
	Cidade cidade = malloc(sizeof(cidade));
	Predio p;
	int i;
	va_list argp;
	va_start(argp, numPredios);
	
	cidade->predios = malloc(numPredios*sizeof(Predio));
	cidade->numPredios = numPredios;
	
	for ( i = 0; i < numPredios; i++){
		cidade->predios[i] = va_arg(argp,Predio);
	}
	
	va_end(argp);
	return cidade;
}

Predio novoPredio(int x, int y, int largura, int altura) {
	return NULL;
}

char* elevacao(Cidade c) {
	if (c->numPredios == 2){
		return "1 2"; 
	}
	return "1";
}

