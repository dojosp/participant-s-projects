module Snap where

data Ponto = Ponto Float Float
data PontoAtrator = PontoAtrator Ponto Float

pertenceARegiao :: Ponto -> PontoAtrator -> Bool
pertenceARegiao (Ponto x _) (PontoAtrator _ raio)
	| raio < x  =  False
pertenceARegiao _ _ = True

distancia :: Ponto -> Ponto -> Float
distancia (Ponto x1 y1) (Ponto x2 y2 ) = sqrt ((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))
