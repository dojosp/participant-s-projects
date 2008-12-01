module Main where

import Test.HUnit
import PileBoxes

main = runTestTT testes

testes = TestList[testePilhaVazia]

testePilhaVazia = TestList
	["Nenhuma caixa deveria ter tamanho 0" ~:
	tamanho (Pilha []) ~?= 0
	]
