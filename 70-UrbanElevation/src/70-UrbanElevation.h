#ifndef __70_URBANELEVATION__H__
#define __70_URBANELEVATION__H__

#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

typedef struct p{}* Predio;
typedef struct c{
	Predio* predios;
	int numPredios;
}* Cidade;

Cidade criaCidade(int numPredios, ...);
Predio novoPredio(int x, int y, int largura, int altura);
char* elevacao(Cidade c);

#endif /* __70_URBANELEVATION__H__ */

