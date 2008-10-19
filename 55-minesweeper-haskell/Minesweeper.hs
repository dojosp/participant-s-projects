module Minesweeper where 

fillNumbers [['.']] = [['0']]
fillNumbers [['*']] = [['*']]
fillNumbers [['*','.']] = [['*','1']]
fillNumbers matrix = map dotsToZeros matrix

dotsToZeros :: [Char] -> [Char]
dotsToZeros [] = ""
dotsToZeros (a:tail) = (convert a):(dotsToZeros tail)

convert :: Char -> Char
convert '.' = '0'
convert thing = thing