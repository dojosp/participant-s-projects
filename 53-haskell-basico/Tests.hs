module Main where

import Test.HUnit
import Basicas

main = runTestTT testes

testes = TestList [testeMapeia]

testeMapeia =
    TestList
    [
     "Nao mapeia lista vazia para lista vazia" ~:
     [] ~=? (mapeia [] (+ 5))
    ,"Nao mapeia lista de um elemento para um elemento com funcao" ~:
     [5] ~=? (mapeia [0] (+ 5))
    ]
