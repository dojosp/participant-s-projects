module Main where

import Test.HUnit
import Entertainement

main = runTestTT testes

testes = TestList [testeGravitaParaAEsquerda]

testeGravitaParaAEsquerda = TestList
  [
  "Um elemento a esquerda fica a esquerda" ~:
  gravitaEsquerda ['a', ' '] ~?= ['a', ' ']
  ,"Um elemento a direita fica a esquerda" ~:
  gravitaEsquerda [' ', 'a'] ~?= ['a', ' ']
  ,"Outro elemento a esquerda fica a esquerda" ~:
  gravitaEsquerda ['b', ' '] ~?= ['b', ' ']
  ,"Outro elemento a direita fica a esquerda" ~:
  gravitaEsquerda [' ', 'b'] ~?= ['b', ' ']
  ,"Outro elemento a direita de uma lista de tres elementos fica a esquerda" ~:
  gravitaEsquerda [' ', ' ', 'b'] ~?= ['b', ' ', ' ']
  ,"Um elemento a direita de uma lista de tres elementos fica a esquerda" ~:
  gravitaEsquerda [' ', ' ', 'a'] ~?= ['a', ' ', ' ']
  ,"Dois elementos a direita de uma lista ficam a esquerda" ~:
  gravitaEsquerda [' ', 'a', 'a'] ~?= ['a', 'a', ' ']
  ,"Dois elementos separados numa lista ficam a esquerda" ~:
  gravitaEsquerda ['a', ' ', 'a'] ~?= ['a', 'a', ' ']
  ,"Dois elementos diferentes separados numa lista ficam a esquerda" ~:
  gravitaEsquerda ['a',' ','b'] ~?= ['a','b',' ']

  ]