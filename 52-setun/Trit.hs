module Trit where

converte 0 = "0"
converte 1 = "+"

maxPot3 :: Int -> Int 
maxPot3 x
    | x < 3 = 0
    | otherwise = 1 + maxPot3 (x `div` 3)



