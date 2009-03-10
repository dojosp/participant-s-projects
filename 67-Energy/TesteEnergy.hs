module Main where 

import Test.HUnit
import Energy

main = runTestTT testes 

testes = TestList [testeConexo, testeDFS, testeVizinhos]

grafoMinimo = Grafo 3 [(1,2),(2,3)]

testeConexo = TestList[
	       "Grafo minimo deve ser conexo" ~:
	       ehConexo grafoMinimo ~?= True
	      ]

testeDFS =
    TestList
    [
     "dfs de grafo vazio deve devolver vazio" ~:
     dfs (Grafo 0 []) ~?= []
    ,"dfs de grafo com um vertice deve devolver 1" ~:
     dfs (Grafo 1 []) ~?= [1]
    ,"dfs de grafo com dois vertices sem aresta deve devolver vertice 1" ~:
     dfs (Grafo 2 []) ~?= [1]
    ,"dfs de grafo com dois vertices com aresta deve devolver vertices" ~:
     dfs (Grafo 2 [(1,2)]) ~?= [1,2]
    ]

testeVizinhos =
    TestList
    [
     "Vizinhos de 1 na lista vazia eh vazio" ~:
     vizinhos 1 [] ~?= []
    ]