module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea "10" = False
homogenea "01" = False
homogenea _ = True