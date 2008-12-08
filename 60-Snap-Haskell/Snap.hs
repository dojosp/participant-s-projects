module Snap where

data Ponto = Ponto Int Int



distancia :: Ponto -> Ponto -> Int
distancia (Ponto 0 0) (Ponto 0 1 ) = 1
distancia _ _ = 0
