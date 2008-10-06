module Main where

import Test.HUnit
import TresNmaisUm

main = runTestTT testes

testes = TestList [testeProximoNumero]

testeProximoNumero =
    TestList
    [
     "Proximo numero depois 2 deveria ser 1" ~:
     proximo 2 ~?= 1
    ]