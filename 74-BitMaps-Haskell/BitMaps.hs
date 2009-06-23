module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True
homogenea (x:xs) = x == head xs && (homogenea xs)

divide :: Int -> Int -> String -> [String]
divide _ _ _ = ["0"]