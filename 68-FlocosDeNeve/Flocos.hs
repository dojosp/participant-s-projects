module Flocos where

type Raio = Float
type Ponto = (Float,Float)

calculaPontas :: Ponto -> Raio -> [Ponto]
calculaPontas (x,y) raio = [(x, y+raio),
                            (x+coseno30*raio, y+raio*seno30),
                            (x+raio*coseno30, y-raio*seno30),
                            (x, y-raio),
                            (x-coseno30*raio, y-raio*seno30),
                            (x-raio*coseno30, y+raio*seno30)]

seno30 = 0.5
coseno30 :: Float
coseno30 = (sqrt 3 ) / 2

geraFractal _ _ _ = [(1,11),
                     (1+5*(sqrt 3), 6),
                     (1+5*(sqrt 3), -4),
                     (1, -9),
                     (1-5*(sqrt 3), -4),
                     (1-5*(sqrt 3), 6)]           