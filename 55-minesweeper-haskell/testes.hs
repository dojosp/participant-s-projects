module Main where

import Test.HUnit
import Minesweeper

main=runTestTT tests

tests = TestList [test1, test2]

test1 = TestList[
         "Fills numbers for 1x1 not bomb" ~:
         [['0']] ~=? fillNumbers [['.']]
        ,"Fills numbers for 1x1 bomb" ~:
         [['*']] ~=? fillNumbers [['*']]
        ,"Fills numbers for 2x1 without bombs" ~:
         [['0','0']] ~=? fillNumbers [['.','.']]
        ,"Fills numbers for 2x2 without bombs" ~:
         [['0','0'],['0','0']] ~=? fillNumbers [['.','.'],['.','.']]
        ,"Fills numbers for 2x1 with one bomb" ~:
         [['*','1']] ~=? fillNumbers [['*','.']]
        ,"Fills numbers for 2x1 with two bombs" ~:
         [['*','*']] ~=? fillNumbers [['*','*']]
        ,"Fills numbers for 2x2 with one bomb" ~:
         [['*','1'], ['1' , '1']] ~=? fillNumbers [['*','.'],['.','.']]
        ]

test2 = TestList [
         "Replaces . for 0 on a 1-sized list of chars" ~:
         ['0'] ~=? (dotsToZeros ['.'])
        ,"Replaces . for 0 on a 2-sized list of chars" ~:
         ['0','0'] ~=? (dotsToZeros ['.','.'])
        ]