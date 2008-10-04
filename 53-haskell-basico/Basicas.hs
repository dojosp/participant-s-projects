module Basicas where

mapeia :: [a] -> (a -> b) -> [b]
mapeia (a : resto) funcao = (funcao a):mapeia resto funcao
mapeia [] funcao = []

filtra :: [a] -> (a -> Bool) -> [a]
filtra (x:xs) predicado | predicado x = (x:filtra xs predicado)
                        | otherwise = filtra xs predicado
filtra [] _ = []
