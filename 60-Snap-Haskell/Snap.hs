module Snap where

data Ponto = Ponto Float Float
	deriving (Show,Eq)
data PontoAtrator = PontoAtrator Ponto Float

clique p _ = p

pertenceARegiao :: Ponto -> PontoAtrator -> Bool
pertenceARegiao ponto (PontoAtrator centro raio) = raio >= distancia ponto centro

distancia :: Ponto -> Ponto -> Float
distancia (Ponto x1 y1) (Ponto x2 y2 ) = sqrt ((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))
