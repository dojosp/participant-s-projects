module Sanduiche where


montaMatriz [1,2,3] = [[1,2,3],[2,4,6],[3,6,9]]
montaMatriz [x,y] = [[x*x,x*y],[x*y,y*y]] 
montaMatriz [x] = [[x*x]]
