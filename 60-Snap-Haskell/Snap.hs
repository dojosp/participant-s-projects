module Snap where

data Ponto = Ponto Float Float
data Raio = Raio Float

pertenceARegiao :: Ponto -> Ponto -> Raio -> Bool
pertenceARegiao _ _ _ = True

distancia :: Ponto -> Ponto -> Float
distancia (Ponto x1 y1) (Ponto x2 y2 ) = sqrt ((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))
