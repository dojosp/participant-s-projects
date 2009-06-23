module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True
homogenea (x:xs) = x == head xs && (homogenea xs)

divide :: Int -> Int -> String -> [String]
divide _ 1 string = [string]
divide l c x = [ take (c - c `div` 2) x , drop (c - c `div` 2) x ]