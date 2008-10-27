module Entertainement where

gravitaEsquerda (' ' : as) = gravitaEsquerda as ++ (' ' : [])
gravitaEsquerda (a : as) = a : gravitaEsquerda as
gravitaEsquerda a = a