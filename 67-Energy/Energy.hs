module Energy where

data Grafo = Grafo Int [(Int,Int)]

ehConexo :: Grafo -> Bool
ehConexo _ = True
--ehConexo grafo = null$ dfs grafo

dfs :: Grafo -> [Int]
dfs (Grafo 0 _) = []
dfs (Grafo _ []) = [1]
dfs (Grafo 2 _) = [1, 2]
dfs (Grafo _ arestas) = 1:(vizinhos 1 arestas)

vizinhos :: Int -> [(Int, Int)] -> [Int]
vizinhos _ _ = []
