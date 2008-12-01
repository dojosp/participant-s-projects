module Main where

import Test.HUnit
import PileBoxes

main = runTestTT testes

testes = TestList[testePilhaVazia, testeUmaCaixa]

testePilhaVazia = TestList
	["Nenhuma caixa deveria ter tamanho 0" ~:
	tamanho (Pilha []) ~?= 0
	]

testeUmaCaixa = TestList
	["Pilha de uma caixa de tamanho 1x1 deveria ter tamanho 1" ~:
	tamanho (Pilha [Box (1,1)]) ~?= 1
	,"Pilha de uma caixa de tamanho 2x1 deveria ter tamanho 2" ~:
	tamanho (Pilha [Box (2,1)]) ~?= 2
	,"Pilha de uma caixa de tamanho 2x2 deveria ter tamanho 2" ~:
	tamanho (Pilha [Box (2,2)]) ~?= 2
	]
