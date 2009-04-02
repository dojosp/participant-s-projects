module Energy where

data Grafo = Grafo Int [(Int,Int)]

ehConexo :: Grafo -> Bool
ehConexo _ = True
--ehConexo grafo = null$ dfs grafo

dfs :: Grafo -> [Int]
dfs (Grafo 0 _) = []
dfs grafo = dfs' grafo 1

dfs' :: Grafo -> Int -> [Int]
dfs' (Grafo n arestas) vertice = 
    let
        amigos = vizinhos vertice arestas
        novasArestas = remove vertice arestas
        visitados' = map (dfs' (Grafo n novasArestas)) amigos
    in
      vertice:amigos

vizinhos :: Int -> [(Int, Int)] -> [Int]
vizinhos _ [] = []
vizinhos cara ((x,y):resto) 
    | (cara == x)= y: vizinhos cara resto
    | (cara == y)= x: vizinhos cara resto
    | otherwise = vizinhos cara resto

remove :: Int -> [(Int, Int)] -> [(Int, Int)]
remove cara arestas = 
    filter (\(x,y) -> not ((x==cara)||(y==cara))) arestas