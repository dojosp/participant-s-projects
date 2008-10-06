module TresNmaisUm where

proximo :: Int -> Int
proximo x | even x = x `div` 2
          | otherwise = 3 * x + 1

ciclo 1 = 0
ciclo n = 1 + ciclo (proximo n)

maiorCicloEntre i j | i == j = ciclo i
                    | i <  j = max (ciclo j) (maiorCicloEntre i (j-1))
                    | otherwise = maiorCicloEntre j i

maiorCicloEntre' s =
    let
        dupla = span (/= ' ') s
        i' = fst dupla
        j' = snd dupla
    in
      maiorCicloEntre (read i') (read j')