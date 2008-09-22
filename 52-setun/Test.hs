module Main where

import Test.HUnit
import Trit

main = runTestTT testes

testes = TestList [testeConverteParaUmDigito]

testeConverteParaUmDigito =
    TestList 
    [
     "Converte 0 para 0" ~:
     "0" ~=? converte 0
    ]