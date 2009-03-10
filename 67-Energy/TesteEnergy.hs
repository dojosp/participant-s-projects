module Main where 

import Test.HUnit
import Energy

main = runTestTT testes 

testes = TestList [testeConexo , testeDFS]

grafoMinimo = Grafo 3 [(1,2),(2,3)]

testeConexo = TestList[
	       "Grafo minimo deve ser conexo" ~:
	       ehConexo grafoMinimo ~?= True
	      ]

testeDFS = TestList[
            "dfs de grafo vazio deve devolver vazio" ~:
            dfs (Grafo 0 []) ~?= []
           ,"dfs de grafo com um vertice deve devolver vazio" ~:
            dfs (Grafo 1 []) ~?= []
           ]