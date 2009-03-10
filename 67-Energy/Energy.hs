module Energy where

data Grafo = Grafo Int [(Int,Int)]

ehConexo :: Grafo -> Bool
ehConexo _ = True
--ehConexo grafo = null$ dfs grafo

dfs :: Grafo -> [Int]
dfs (Grafo 0 _) = []
dfs (Grafo _ arestas) = 1:(vizinhos 1 arestas)

vizinhos :: Int -> [(Int, Int)] -> [Int]
vizinhos _ [] = []
vizinhos cara ((x,y):resto) 
    | (cara == x)= y: vizinhos cara resto
    | (cara == y)= x: vizinhos cara resto
    | otherwise = vizinhos cara resto