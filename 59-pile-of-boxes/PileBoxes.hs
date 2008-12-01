module PileBoxes where

data Pilha = Pilha [Box]
data Box = Box (Int,Int)

tamanho :: Pilha -> Int
tamanho (Pilha [Box (altura,_)]) = altura
tamanho (Pilha []) = 0
tamanho _ = 2
