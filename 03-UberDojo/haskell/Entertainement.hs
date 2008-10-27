module Entertainement where

gravitaEsquerda (' ' : as) = gravitaEsquerda as ++ (' ' : [])
gravitaEsquerda (a : as) = a : gravitaEsquerda as
gravitaEsquerda a = a

gravitaTabuleiroEsquerda [x, y] = [(gravitaEsquerda x), (gravitaEsquerda y)]
gravitaTabuleiroEsquerda [x, y, z] = [(gravitaEsquerda x),
                                      (gravitaEsquerda y),
                                      (gravitaEsquerda z)]
gravitaTabuleiroEsquerda (x : resto) = (gravitaEsquerda x) :
                                       (gravitaTabuleiroEsquerda resto)