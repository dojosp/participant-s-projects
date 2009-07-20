module Main where

import Test.HUnit
import FactFreq

main = runTestTT testes

testes = TestList [
          testaFatorial
         ,testaContagem

         ]

testaFatorial =
    TestList
    [
     "Fatorial de 0 eh 1" ~:
     (fatorial 0) ~?= 1
    ,"Fatorial de 1 eh 1" ~:
     (fatorial 1) ~?= 1
    ,"Fatorial de 2 eh 2" ~:
     (fatorial 2) ~?= 2
    ,"Fatorial de 3 eh 6" ~:
     (fatorial 3) ~?= 6
    ,"Fatorial de 100 > 4294967296" ~:
     (fatorial 100) > 4294967296 ~?= True
    ]

testaContagem =
    TestList
    [
     "Deveriamos ter 1 digito 1 em 1 e nenhum outro digito" ~:
     contagem 1 ~?= [0,1,0,0,0,0,0,0,0,0]
    ,"Deveriamos ter 1 digito 2 em 2 e nenhum outro digito" ~:
     contagem 2 ~?= [0,0,1,0,0,0,0,0,0,0]
    ]