module Entertainement where

gravitaEsquerda [' ', ' ', a] = [ a, ' ', ' ']
gravitaEsquerda [' ', a] = [a, ' ']
-- gravitaEsquerda [' ' : as ] = gravitaEsquerda [as] ++ ' ' : []
gravitaEsquerda a = a