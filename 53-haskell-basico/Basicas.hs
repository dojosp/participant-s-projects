module Basicas where

mapeia :: [a] -> (a -> b) -> [b]
mapeia (a : resto) funcao = (funcao a):mapeia resto funcao
mapeia [] funcao = [] 

