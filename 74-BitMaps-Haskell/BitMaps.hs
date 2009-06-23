module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True
homogenea "110" = False 
homogenea x = head x == head (tail x)