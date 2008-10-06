module Main where

import Test.HUnit
import TresNmaisUm

main = runTestTT testes

testes = TestList [testeProximoNumero, testeContaTamanhoDoCiclo]

testeProximoNumero =
    TestList
    [
     "Proximo numero depois 2 deveria ser 1" ~:
     proximo 2 ~?= 1
    ,"Proximo numero depois 4 deveria ser 2" ~:
     proximo 4 ~?= 2
    ,"Proximo numero depois 3 deveria ser 10" ~:
     proximo 3 ~?= 10
    ,"Proximo numero depois 5 deveria ser 16" ~:
     proximo 5 ~?= 16
    ]

testeContaTamanhoDoCiclo=
    TestList
    [
    "Ciclo de 1 eh 0" ~:
    ciclo 1 ~?= 0
    ]
