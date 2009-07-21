module FactFreq where

fatorial 0 = 1
fatorial n = n * (fatorial $ n-1)

contagem n |n >= 10 = somaNoDigito (div n 10) (somaNoDigito (mod n 10) [0,0,0,0,0,0,0,0,0,0])
           |otherwise = somaNoDigito n [0,0,0,0,0,0,0,0,0,0]

somaNoDigito 0 (x:xs) = x+1 : xs
somaNoDigito n (x:xs) = x : somaNoDigito (n-1) xs
