#ifndef __48_EINSTEIN_H__
#define __48_EINSTEIN_H__

#include <stdlib.h>
#include <stdio.h>

#define MAX 110

typedef struct {
	int cost[MAX][MAX];
	int size;
} graph;


int graph_vertexes(graph *g);

graph *graph_new(int vertexes);

void graph_add_edge(graph *g, int v1, int v2, int cost);

int graph_edge_cost(graph *g, int v1 , int v2);

graph* graph_read(char* input);
#endif /* __48-EINSTEIN_H__ */


