module Bowling where

import Char

bowlingScore (frame:frames) = frameScore(frame) + bowlingScore(frames)
bowlingScore [] = 0

frameScore [roll1, roll2] = (rollScore roll1) + (rollScore roll2)
frameScore _ = 0

rollScore '-' = 0
rollScore roll = (digitToInt roll)