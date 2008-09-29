module Basicas where

mapeia :: [a] -> (a -> b) -> [b]
mapeia [a] funcao = [(funcao a)]
mapeia [] funcao = [] 

