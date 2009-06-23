module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True
homogenea (x:xs) = x == head xs && (homogenea xs)

divide :: Int -> Int -> String -> [String]
divide 1 1 matriz = [matriz]
divide linhas 1 matriz = divide 1 linhas matriz
divide 1 colunas matriz =
	[take metade matriz, drop metade matriz]
	where metade = colunas - colunas `div` 2