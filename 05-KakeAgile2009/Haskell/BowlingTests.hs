module Main where

import Test.HUnit
import Bowling

main = runTestTT tests

tests = TestList
        [testAllZeros,
        testOneSimpleFrame,
        testAccumulatesFrameScores
        ]

testAllZeros =
	"All zeros should score 0" ~:
	0 ~?= bowlingScore (take 10 (repeat "--"))

testOneSimpleFrame =
	"One simple frame should score the sum of two rolls" ~:
	5 ~?= bowlingScore ("23" : (take 9 (repeat "--")))

testAccumulatesFrameScores =
	"score should accumulates frame scores" ~:
	5 + 3 ~?= bowlingScore ("23" : ("12" : (take 8 (repeat "--"))))
