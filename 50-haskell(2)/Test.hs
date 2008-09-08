module Main where

import Test.HUnit
import Sanduiche

main = runTestTT testes

testes = TestList [verificaMontaMatriz]

verificaMontaMatriz = TestList ["Nao monta uma matriz de tamanho 1" ~:
								[[1]] ~=? montaMatriz [1],
								"Nao monta uma matriz de tamanho 1 com valor 2" ~:
								[[4]] ~=? montaMatriz [2]]

