module TresNmaisUm where

proximo :: Int -> Int
proximo x | even x = x `div` 2
          | otherwise = 3 * x + 1
