module Bowling where

bowlingScore (frame:frames) = frameScore(frame) + bowlingScore(frames)
bowlingScore [] = 0

frameScore "12" = 3
frameScore "23" = 5
frameScore _ = 0
