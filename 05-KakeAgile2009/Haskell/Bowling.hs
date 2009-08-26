module Bowling where

import Char

bowlingScore (frame:frames) = frameScore(frame) + bowlingScore(frames)
bowlingScore [] = 0

frameScore ['-', '-'] = 0
frameScore ['-', roll] = (digitToInt roll)
frameScore [roll, '-'] = (digitToInt roll)
frameScore [roll1, roll2] = (digitToInt roll1) + (digitToInt roll2)
frameScore _ = 0
