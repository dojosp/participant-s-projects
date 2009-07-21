module FactFreq where

fatorial 0 = 1
fatorial n = n * (fatorial $ n-1)

contagem 11 =  [0,2,0,0,0,0,0,0,0,0]
contagem 10 =  [1,1,0,0,0,0,0,0,0,0]
contagem n = somaNoDigito n [0,0,0,0,0,0,0,0,0,0]

somaNoDigito 0 (x:xs) = x+1 : xs
somaNoDigito n (x:xs) = x : somaNoDigito (n-1) xs
