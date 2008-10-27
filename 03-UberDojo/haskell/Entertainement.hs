module Entertainement where

gravitaEsquerda (' ' : as) = gravitaEsquerda as ++ (' ' : [])
gravitaEsquerda a = a