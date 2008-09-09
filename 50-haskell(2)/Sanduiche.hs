module Sanduiche where

{-montaMatriz [x:xs] =
	let
		matrizResto = montaMatriz xs
		a1Vezesa2an = [x*ai | ai <- xs]
		matrizSemAPrimeiraColuna = a1Vezesa2an : matrizResto
		listaToda = x:xs
		primeiraColuna = [x*ai | ai <- listaToda]
		matrizToda = [ a:b | a <- primeiraColuna, b
-}

juntaListas [1] [[x]] = [[1, x]]


montaMatriz [x,y,z] = [[x*x,x*y,x*z],[x*y,y*y,y*z],[x*z,z*y,z*z]]
montaMatriz [x,y] = [[x*x,x*y],[x*y,y*y]] 
montaMatriz [x] = [[x*x]]
