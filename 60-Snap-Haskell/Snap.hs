module Snap where

data Ponto = Ponto Int Int



distancia :: Ponto -> Ponto -> Int
distancia (Ponto 0 a) (Ponto 0 b ) = b-a
