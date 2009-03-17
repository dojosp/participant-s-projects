module Flocos where

type Raio = Float
type Ponto = (Float,Float)

calculaPontas :: Ponto -> Raio -> [Ponto]
calculaPontas _ raio = [(0, raio),
                        (coseno30*raio, raio*seno30),
                        (raio*coseno30, -raio*seno30)]

seno30 = 0.5
coseno30 :: Float
coseno30 = (sqrt 3 ) / 2
           