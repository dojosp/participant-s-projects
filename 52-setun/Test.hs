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
    ]

testeMaiorPotenciaQueCabe =
    TestList
    [
     "Maior potencia de 3 que cabe em 1 e' 0" ~:
     0  ~=? maxPot3 1

     ,"Maior potencia de 3 que cabe em 2 e' 0" ~:
     0  ~=? maxPot3 2
    ]