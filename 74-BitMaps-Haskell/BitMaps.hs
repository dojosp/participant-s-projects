module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True 
homogenea x = head x == head (tail x)