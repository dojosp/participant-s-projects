module Main where

import Test.HUnit
import BitMaps

tests = TestList
	[
	 testesDeIntegracao,
	 testesDeHomogeneidade,
	 testesQuadrantes
	]

testesQuadrantes = TestList
	[
	"Uma matriz 0 deveria ser dividida em 1 quadrante" ~:
	 divide 1 1 "0" ~?= ["0"]
	,"Uma matriz 1 deveria ser dividida em 1 quadrante" ~:
	 divide 1 1 "1" ~?= ["1"]
	,"Uma matriz 11 1x2 deveria ser dividida em 2 quadrantes" ~:
	 divide 1 2 "11" ~?= ["1","1"]
	,"Uma matriz 10 1x2 deveria ser dividida em 2 quadrantes" ~:
	 divide 1 2 "10" ~?= ["1","0"]
	 	,"Uma matriz 110 1x3 deveria ser dividida em 2 quadrantes" ~:
	 divide 1 3 "110" ~?= ["11","0"]
	]

testesDeHomogeneidade = TestList
	[
	"Uma matriz de um so 0 deveria ser homogenea" ~:
	 homogenea "0" ~?= True
	,"Uma matriz de um so 1 deveria ser homogenea" ~:
	 homogenea "1" ~?= True
	,"Uma matriz de 0 e 1 nao deveria ser homogenea" ~:
	 homogenea "01" ~?= False
	,"Uma matriz de 1 e 0 nao deveria ser homogenea" ~:
	 homogenea "10" ~?= False
	,"Uma matriz com 1 e 1 deveria ser homogenea" ~:
	 homogenea "11" ~?= True
	,"Uma matriz com 1,1 e 1 deveria ser homogenea" ~:
	 homogenea "111" ~?= True
	,"Uma matriz com 1,1 e 0 nao deveria ser homogenea" ~:
	 homogenea "110" ~?= False 
	,"Uma matriz com 0,0 e 1 nao deveria ser homogenea" ~:
	 homogenea "001" ~?= False 
	 ]

testesDeIntegracao = TestList
	[
	"Uma matriz de um so 0 deveria ser 0" ~:
	 compacta "0" ~?= "0"
	]

main = runTestTT tests