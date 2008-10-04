#include "48-einstein_tests.h"

int main(int argc, char**argv) {
	int i=1;boolean render_with_colors=false;
	while(i<argc && !render_with_colors) {
		render_with_colors = (strcmp("--colors",argv[i++]) == 0);
	}
	set_colorize_input(render_with_colors);

	test_fill_graph_matrix();

	test_build_graph_from_input();

	test_calculate_cost_one_vertex_isolation();

	test_calculate_cost_one_subset_isolation();

	__print_tests_summary(4);
	return 0;
}
