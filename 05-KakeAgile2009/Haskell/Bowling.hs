module Bowling where

import Char

bowlingScore [frame] = frameScore frame
bowlingScore (frame:frames) = frameScore(frame) + bowlingScore(frames)

frameScore ['X', '-'] = 10
frameScore [roll1, roll2] = (convertToInt roll1) + (convertToInt roll2)
frameScore _ = 0

convertToInt '-' = 0
convertToInt roll = (digitToInt roll)