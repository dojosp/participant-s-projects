module Main where

import Test.HUnit
import BitMaps

tests = TestList
	[
	 testesDeIntegracao,
	 testesDeHomogeneidade
	]
	
testesDeHomogeneidade = TestList
	[
	"Uma matriz de um so 0 deveria ser homogenea" ~:
	 homogenea "0" ~?= True
	,"Uma matriz de um so 1 deveria ser homogenea" ~:
	 homogenea "1" ~?= True
	,"Uma matriz de com 0 e 1 nao deveria ser homogenea" ~:
	 homogenea "01" ~?= False
	,"Uma matriz de com 1 e 0 nao deveria ser homogenea" ~:
	 homogenea "10" ~?= False
	]

testesDeIntegracao = TestList
	[
	"Uma matriz de um so 0 deveria ser 0" ~:
	 compacta "0" ~?= "0"
	]

main = runTestTT tests