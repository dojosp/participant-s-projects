module Main where

import Test.HUnit
import Sanduiche

main = runTestTT testes

testes = TestList [verificaMontaMatriz , testaJuncaoDeListas]

verificaMontaMatriz = TestList
	["Nao monta uma matriz de tamanho 1" ~:
	[[1]] ~=? montaMatriz [1]
	,"Nao monta uma matriz de tamanho 1 com valor 2" ~:
	[[4]] ~=? montaMatriz [2]
	,"Nao monta uma matriz de tamanho 2" ~:
	[[1,2],[2,4]] ~=? montaMatriz [1,2]
	,"Nao monta uma matriz de tamanho 2 com valores certos" ~:
	[[100,200],[200,400]] ~=? montaMatriz [10,20]
	,"Nao monta uma matriz de tamanho 3 com valores certos" ~:
	[[1,2,3],[2,4,6],[3,6,9]] ~=? montaMatriz [1,2,3]
	,"Nao monta uma matriz de tamanho 3 com outros valores" ~:
	[[1,3,5],[3,9,15],[5,15,25]] ~=? montaMatriz [1,3,5]
	]

testaJuncaoDeListas = TestList
	["Nao juntou listas com um elemento cada" ~:
	[[1, 1]] ~=? juntaListas [1] [[1]]
	]