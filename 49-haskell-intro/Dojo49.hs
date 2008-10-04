module Dojo49 where

fatorial :: (Num t) => t -> t
fatorial 1 = 1
fatorial n = n * fatorial (n-1)

soma :: [Integer] -> Integer
soma [] = 0
soma (x:xs) = x + soma xs
