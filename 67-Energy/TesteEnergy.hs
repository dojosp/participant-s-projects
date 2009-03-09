module Main where 

import Test.HUnit
import Energy

main = runTestTT testes 

testes = TestList [testeUm]

grafoMinimo = Grafo 3 [(1,2),(2,3)]

testeUm = TestList[
	   "Grafo minimo deve ser conexo" ~:
	   ehConexo grafoMinimo ~?= True
	  ]
