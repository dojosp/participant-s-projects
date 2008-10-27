module Main where

import Test.HUnit
import Entertainement

main = runTestTT testes

testes = TestList [testeGravitaParaAEsquerda]

testeGravitaParaAEsquerda = TestList
  [
  "Um elemento a esquerda fica a esquerda" ~:
  gravitaEsquerda [['a', ' ']] ~?= [['a', ' ']]
  ,"Um elemento a direita fica a esquerda" ~:
  gravitaEsquerda [[' ', 'a']] ~?= [['a', ' ']]
  ]