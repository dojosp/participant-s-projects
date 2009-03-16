module Main where

import Test.HUnit

main = runTestTT testes

testes = TestList
         [testeCalculaPontas]

testeCalculaPontas =
    TestList
    [
     "Calcula primeira ponta do floco em 0,0 com raio 10" ~:
     head (calculaPonta (0,0) 10) ~?= (0,10)
    ]
