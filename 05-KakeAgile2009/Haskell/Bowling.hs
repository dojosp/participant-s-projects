module Bowling where

bowlingScore (frame:frames) = frameScore(frame) + bowlingScore(frames)
bowlingScore [] = 0

frameScore [roll1, roll2] = (parseInt roll1) + (parseInt roll2)
frameScore _ = 0
