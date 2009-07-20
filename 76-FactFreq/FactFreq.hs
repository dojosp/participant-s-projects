module FactFreq where

fatorial 0 = 1
fatorial n = n * (fatorial $ n-1)

contagem 2 = [0,0,1,0,0,0,0,0,0,0]
contagem _ = [0,1,0,0,0,0,0,0,0,0]