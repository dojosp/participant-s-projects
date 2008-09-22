module Main where

import Test.HUnit
import Trit

main = runTestTT testes

testes = TestList [testeConverteParaUmDigito , testeMaiorPotenciaQueCabe]

testeConverteParaUmDigito =
    TestList 
    [
     "Converte 0 para 0" ~:
     "0" ~=? converte 0

    ,"Converte 1 para +" ~:
     "+" ~=? converte 1

    ,"Converte -1 para -" ~:
     "-" ~=? converte (-1)

    ,"Converte 2 para +-" ~:
     "+-" ~=? converte 2
    ]

testeMaiorPotenciaQueCabe =
    TestList
    [
     "Maior potencia de 3 que cabe em 0 e' 1" ~:
     1  ~=? maxPot3 0

    ,"Maior potencia de 3 que cabe em 1 e' 1" ~:
     1  ~=? maxPot3 1

    ,"Maior potencia de 3 que cabe em 2 e' 1" ~:
     1  ~=? maxPot3 2

    ,"Maior potencia de 3 que cabe em 3 e' 3" ~:
     3  ~=? maxPot3 3

    ,"Maior potencia de 3 que cabe em 4 e' 3" ~:
     3  ~=? maxPot3 4

    ,"Maior potencia de 3 que cabe em 9 e' 9" ~:
     9  ~=? maxPot3 9

    ]