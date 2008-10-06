module TresNmaisUm where

proximo :: Int -> Int
proximo x | even x = x `div` 2
          | otherwise = 3 * x + 1

ciclo 1 = 0
ciclo n = 1 + ciclo (proximo n)

maiorCicloEntre _ _ = 0