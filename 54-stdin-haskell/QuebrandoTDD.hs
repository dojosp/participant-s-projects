module Main where

import TresNmaisUm
import IO

main = do
  hSetBuffering stdin LineBuffering
  linha <- getLine
  printSolucao linha

printSolucao linha = do
  putStr (linha ++ " ")
  putStrLn (show ((maiorCicloEntre' linha) + 1))
  main