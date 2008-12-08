module Snap where

data Ponto = Ponto Int Int



distancia :: Ponto -> Ponto -> Int
distancia (Ponto x1 y1) (Ponto x2 y2 ) = x2-x1 + y2-y1
