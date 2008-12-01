module PileBoxes where

data Pilha = Pilha [Box]
data Box = Box (Int,Int)

tamanho :: Pilha -> Int
tamanho (Pilha [Box (2,1)]) = 2
tamanho (Pilha [Box (1,1)]) = 1
tamanho _ = 0
