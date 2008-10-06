module Main where

import Test.HUnit
import TresNmaisUm

main = runTestTT testes

testes = TestList [testeProximoNumero, testeContaTamanhoDoCiclo, testeMaiorCicloNoIntervaloEntreIeJ]

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
    ,"Ciclo de 2 eh 1" ~:
    ciclo 2 ~?= 1
    ,"Ciclo de 4 eh 2" ~:
    ciclo 4 ~?= 2
    ,"Ciclo de 3 eh 7" ~:
    ciclo 3 ~?= 7
    ,"Ciclo de 7 eh 16" ~:
    ciclo 7 ~?= 16
    ]

testeMaiorCicloNoIntervaloEntreIeJ =
    TestList
    [
     "Maior ciclo no intervalo entre 1 e 1 deveria ser 0" ~:
     maiorCicloEntre 1 1 ~?= 0
    ,"Maior ciclo no intervalo entre 1 e 2 deveria ser 1" ~:
     maiorCicloEntre 1 2 ~?= 1
    ,"Maior ciclo no intervalo entre 2 e 1 deveria ser 1" ~:
     maiorCicloEntre 2 1 ~?= 1
    ,"Maior ciclo no intervalo entre 2 e 2 deveria ser 1" ~:
     maiorCicloEntre 2 2 ~?= 1
    ,"Maior ciclo no intervalo entre 3 e 1 deveria ser 7" ~:
     maiorCicloEntre 3 1 ~?= 7
    ]