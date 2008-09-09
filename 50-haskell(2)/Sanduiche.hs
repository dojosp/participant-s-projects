module Sanduiche where


montaMatriz [x,y,z] = [[x*x,x*y,x*z],[x*y,y*y,y*z],[x*z,z*y,z*z]]
montaMatriz [x,y] = [[x*x,x*y],[x*y,y*y]] 
montaMatriz [x] = [[x*x]]
