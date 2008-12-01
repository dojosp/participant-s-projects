module PileBoxes where

data Pilha = Pilha [Box]
data Box = Box (Int,Int)

tamanho :: Pilha -> Int
tamanho (Pilha [Box (altura,1)]) = altura
tamanho _ = 0
