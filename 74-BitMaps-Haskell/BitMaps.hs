module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True
homogenea (x:xs) = x == head xs && (homogenea xs)