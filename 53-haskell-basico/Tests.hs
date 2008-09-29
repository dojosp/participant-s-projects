module Main where

import Test.HUnit
import Char
import Basicas

main = runTestTT testes

testes = TestList [testeMapeia,testeFiltro]

testeMapeia =
    TestList
    [
     "Nao mapeia lista vazia para lista vazia" ~:
     [] ~=? (mapeia [] (+ 5))
    ,"Nao mapeia lista de um elemento para um elemento com funcao" ~:
     [5] ~=? (mapeia [0] (+ 5))
    ,"Nao mapeia lista de dois elementos para dois elementos com funcao" ~:
     [5 , 15] ~=? (mapeia [0 , 10] (+ 5))
    ,"Nao mapeia lista de strings para lista de tamanhos" ~:
     [3,4,2] ~=? (mapeia ["...", "dojo", "oi"] length)
    ]

testeFiltro =
    TestList
    [
     "Nao filtra lista vazia" ~:
     [] ~=? filtra [] Char.isLower
    ,"Elemento que satisfaz deveria ficar na lista, que tem tamanho 1" ~:
     ['a'] ~=? filtra ['a'] Char.isLower
    ,"Elemento que nao satisfaz deveria sair da lista, que tem tamanho 1" ~:
     [] ~=? filtra ['A'] Char.isLower
    ]
