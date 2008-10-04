module Trit where

converte 0 = "0"
converte 1 = "+"
converte (-1) = "-"
converte x =
    let
        pot = maxPot3 (x+1)
    in
      "+" ++ converte (x-pot)


maxPot3 :: Int -> Int 
maxPot3 x
    | x < 3 = 1
    | otherwise = 3 * maxPot3 (x `div` 3)
