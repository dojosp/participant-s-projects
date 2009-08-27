module Bowling where

import Char

bowlingScore :: [String] -> Int
bowlingScore [frame] = pinsKnocked frame
bowlingScore (frame : (nextFrame : frames)) =
	(frameScore frame nextFrame) + (bowlingScore (nextFrame : frames))

frameScore :: String -> String -> Int
frameScore ['X', '-'] nextFrame = 10 + pinsKnocked nextFrame
frameScore frame nextFrame = pinsKnocked frame

pinsKnocked :: String -> Int
pinsKnocked [roll1, roll2] = (convertToInt roll1) + (convertToInt roll2)
pinsKnocked _ = 16

convertToInt '-' = 0
convertToInt roll = (digitToInt roll)