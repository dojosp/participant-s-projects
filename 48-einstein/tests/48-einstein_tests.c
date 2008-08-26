#include "48-einstein_tests.h"

void test_fill_graph_matrix() {
	graph *g = graph_new(5);
	assert_same("The graph should have 5 vertexes", 5, graph_vertexes(g));

	g = graph_new(10);
	assert_same("The graph should have 10 vertexes", 10, graph_vertexes(g));
	
	g = graph_new(3);
	assert_same("The graph should have 3 vertexes", 3, graph_vertexes(g));
	graph_add_edge(g, 0, 1, 2);
	assert_same("The graph should have an edge from 0 to 1 w/ cost 2", 2, graph_edge_cost(g, 0, 1));
	assert_same("The graph should have an edge from 1 to 0 w/ cost 2", 2, graph_edge_cost(g, 1, 0));
	
	assert_same("The graph should not have an edge from 0 to 2", 0, graph_edge_cost(g, 0, 2));
	
	g = graph_new(3);
	assert_same("The graph should have 3 vertexes", 3, graph_vertexes(g));
	assert_same("The graph should not have an edge from 0 to 1", 0, graph_edge_cost(g, 0, 1));
}

void test_build_graph_from_input() {
	char *entrada = "1\n\\
 3 1\n\\
 1 2 1";
	graph *g = graph_read(entrada);
	assert_same("Graph cost of vertex 1 to 2 was not 1",1, graph_edge_cost(g, 1, 2));
}

void test_calculate_cost_one_vertex_isolation() {
	pending();
}

void test_calculate_cost_one_subset_isolation() {
	pending();
}