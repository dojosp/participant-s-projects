module Main where

import Test.HUnit
import Trit

main = runTestTT tests

tests = TestList [fazParseDoLadoContrario
                 ]

fazParseDoLadoContrario =
    TestList
    [
     "Deve parsear 0 para 0" ~:
     0 ~=? parseTrit "0"
    ,"Deve parsear + para 1" ~:
     1 ~=? parseTrit "+" 
    , "Deve parsear - para -1" ~:
     -1 ~=? parseTrit "-" 
    , "Deve parsear +- para 2" ~:
     2 ~=? parseTrit "+-"
    , "Deve parsear +0 para 3" ~:
     3 ~=? parseTrit "+0"
    , "Deve parsear ++ para 4" ~:
     4 ~=? parseTrit "++"
    , "Deve parsear -+ para -2" ~:
     -2 ~=? parseTrit "-+"
    , "Deve parsear +-- para 5" ~:
     5 ~=? parseTrit "+--"
    , "Deve parsear +-+00- para 188" ~:
     188 ~=? parseTrit "+-+00-"
    , "Deve parsear -+0 para -6" ~:
     -6 ~=? parseTrit "-+0"
    ]
