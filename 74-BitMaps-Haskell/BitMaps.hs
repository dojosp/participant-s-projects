module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True
homogenea (x:xs) = x == head xs && (homogenea xs)

divide :: Int -> Int -> String -> [String]
divide 1 1 string = [string]
divide 1 c x = [ take (c - c `div` 2) x , drop (c - c `div` 2) x ]
divide l 1 x = [ take (l - l `div` 2) x , drop (l - l `div` 2) x ]