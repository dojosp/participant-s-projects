module Basicas where

mapeia :: [a] -> (a -> b) -> [b]
mapeia [a] funcao = [(funcao a)]
mapeia [a , b] funcao = [(funcao a) , (funcao b)]
mapeia [] funcao = [] 

