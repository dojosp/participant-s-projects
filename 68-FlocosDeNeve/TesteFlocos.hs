module Main where

import Test.HUnit
import Flocos

main = runTestTT testes

testes = TestList
         [testeCalculaPontas]

testeCalculaPontas =
    TestList
    [
     "Calcula primeira ponta do floco em 0,0 com raio 10" ~:
     head (calculaPontas (0,0) 10) ~?= (0,10)
    ,"Calcula segunda ponta do floco em 0,0 com raio 10" ~:
     head (tail (calculaPontas (0,0) 10)) ~?= (5 * (sqrt 3), 5)
    ,"Calcula terceira ponta do floco em 0,0 com raio 10" ~:
     head (tail (tail (calculaPontas (0,0) 10))) ~?= (5 * (sqrt 3), -5)
    ]
