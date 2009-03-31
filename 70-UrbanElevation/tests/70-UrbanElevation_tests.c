#include "70-UrbanElevation_tests.h"

void set_up() {
	/* Add code to be run before every test here or remove this function if useless */
}

void deveriaVerUnicoPredio() {
	Cidade cidade = criaCidade(1, novoPredio(0, 0, 10, 10));
	assert_equals("Deveria ter so um predio (1)", "1", elevacao(cidade), strcmp);
}

void deveriaVerDoisPredios() {
	Cidade cidade = criaCidade(2, novoPredio(0, 0, 10, 10), novoPredio(15, 0, 10, 10));
	assert_equals("Deveria ter dois predios (1,2)", "1 2", elevacao(cidade), strcmp);
}

void deveriaVerDoisPrediosAoContrario(){
	Cidade cidade = criaCidade(2, novoPredio(15, 0, 10, 10), novoPredio(0, 0, 10, 10));
	assert_equals("Deveria ter dois predios (2,1)", "2 1", elevacao(cidade), strcmp);	
}


void tear_down() {
	/* Add code to be run after every test here or remove this function if useless */
}

