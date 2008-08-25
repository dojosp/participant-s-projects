#include "48-einstein_tests.h"

int main(int argc, char**argv) {
	int i=1;boolean render_with_colors=false;
	while(i<argc && !render_with_colors) {
		render_with_colors = (strcmp("--colors",argv[i++]) == 0);
	}
	set_colorize_input(render_with_colors);

	test_that_passes();

	test_that_fails();

	test_that_pends();

	__print_tests_summary(3);
	return 0;
}
