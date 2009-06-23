module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True
homogenea (x:xs) = x == head xs && (homogenea xs)

divide :: Int -> Int -> String -> [String]
divide _ 3 (x:xs) = [ [x, head xs], tail xs]
divide _ 2 (x:xs) = [[x],xs]
divide _ _ string = [string]