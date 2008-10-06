module Main where

import TresNmaisUm
import IO

main = do
  hSetBuffering stdin LineBuffering
  linha <- getLine
  putStr (linha ++ " ")
  putStrLn (show ((maiorCicloEntre' linha) + 1))
  main