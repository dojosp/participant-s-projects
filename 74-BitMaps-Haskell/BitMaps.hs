module BitMaps where

compacta _ = "0"

homogenea :: String -> Bool
homogenea [ _ ] = True
homogenea (x:xs) = x == head xs && (homogenea xs)

divide :: Int -> Int -> String -> [String]
divide 1 1 matriz = [matriz]
divide linhas 1 matriz = divide 1 linhas matriz
divide 1 colunas matriz =
	corta matriz metade
	where metade = colunas - colunas `div` 2
divide linhas colunas matriz = [x1, x2, y1, y2]
	where
	[x, y] = corta matriz 2
	[x1, x2] = corta x 1
	[y1, y2] = corta y 1

corta matriz tamanho = [take tamanho matriz, drop tamanho matriz]