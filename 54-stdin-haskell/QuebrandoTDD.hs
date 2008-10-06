module Main where

import TresNmaisUm
import IO

main = do
  hSetBuffering stdin LineBuffering
  linha <- getLine
  putStrLn ( maiorCicloEntre' linha)