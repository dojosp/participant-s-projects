#include "48-einstein_tests.h"

static char *example;

int comparing(void *a, void *b) {
	return true;
}

void set_up() {
	/* Add code to be run before every test here or remove this function if useless */
	example = malloc(sizeof(char) * 10);
	strcpy(example, "Dojo Unit");
}

void test_that_passes() {
	int expected = 1;
	int result = return_parameter(1);
	/* Uses byte per byte comparation. Works with all primitive types
	   and with structs (will compare eventual pointers in it */
	assert_same("This test should never fail.", expected, result);
}

void test_that_fails() {
	char test[5] = "test";
	/* Uses the function passed as last parameter to compare arguments */
	assert_equals("This test should never pass.", test, example, comparing);
}

void test_that_pends() {
	void* pointer = (void*) 0x1;
	/* Asks dojo_unit to hold this tests execution but counts it */
	pending();
	/* Only verifies if point != NULL (or == NULL if assert_null) */
	assert_not_null("0x1 should not be NULL", pointer);
}

void tear_down() {
	/* Add code to be run after every test here or remove this function if useless */
	free(example);
}

