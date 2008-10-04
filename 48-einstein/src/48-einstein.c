#include "48-einstein.h"

int graph_vertexes(graph *g) {
	return g->size;
}

graph *graph_new(int vertexes)	{
	graph *tmp=(graph*)malloc(sizeof(graph));
	tmp->size = vertexes;
	return tmp;
}

void graph_add_edge(graph *g, int v1, int v2, int cost) {
	g->cost[v1][v2] = cost;
	g->cost[v2][v1] = cost;
}

int graph_edge_cost(graph *g, int v1 , int v2){
	return g->cost[v1][v2];
}

graph* graph_read(char* input){
	int T,N,M;
	sscanf(input,"%d",&T);	
	printf(input);
	fflush(stdout);
	return graph_new(1);

}