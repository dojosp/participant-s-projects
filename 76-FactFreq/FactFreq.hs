module FactFreq where

fatorial 0 = 1
fatorial n = n * (fatorial $ n-1)

zeros = [0,0,0,0,0,0,0,0,0,0]

contagem n 
    | n >= 10 = contagemRecursiva n
    | otherwise = somaNoDigito n zeros
                  
contagemRecursiva n = 
    somaNoDigito resto (contagem divisao)
        where
          divisao = (div n 10)
          resto = (mod n 10)

somaNoDigito 0 (x:xs) = x+1 : xs
somaNoDigito n (x:xs) = x : somaNoDigito (n-1) xs
