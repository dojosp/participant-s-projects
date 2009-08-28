module Main where

import Test.HUnit
import Bowling

main = runTestTT tests

tests = TestList
        [testAllZeros,
        testOneSimpleFrame,
        testAccumulatesFrameScores,
        testFrameScoreAddsEvenIfFirstNothing,
        testFrameScoreAddsEvenIfSecondIsNothing,
		  testUnderstandsXAsMarkForStrike,
		  testComputesBonusForStrike,
		  testComputesBonusForLastStrike
        ]

testComputesBonusForLastStrike =
	16 ~=? bowlingScore ((take 9 (repeat "--")) ++ ["X42"])

testComputesBonusForStrike =
	20 ~=? bowlingScore("X-" : "23" : (take 8 (repeat "--")))

testUnderstandsXAsMarkForStrike = 
	"frame score should be 10 when have a strike and a blank roll after" ~:
	10 ~=? bowlingScore("X-" : (take 9 (repeat "--")))

testFrameScoreAddsEvenIfSecondIsNothing = 
	"frame score should add the first roll even if second is nothing" ~:
	5 ~=? bowlingScore ("5-" : (take 9 (repeat "--")))

testFrameScoreAddsEvenIfFirstNothing =
	"frame score should add the second roll even if first is nothing" ~:
	5 ~=? bowlingScore ("-5" : (take 9 (repeat "--")))
        
testAccumulatesFrameScores =
	"score should accumulates frame scores" ~:
	5 + 3 ~=? bowlingScore ("23" : ("12" : (take 8 (repeat "--"))))

testOneSimpleFrame =
	"One simple frame should score the sum of two rolls" ~:
	5 ~=? bowlingScore ("23" : (take 9 (repeat "--")))

testAllZeros =
	"All zeros should score 0" ~:
	0 ~=? bowlingScore (take 10 (repeat "--"))
