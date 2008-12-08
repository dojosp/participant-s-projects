module Main where

import Test.HUnit
import Snap

main = runTestTT testes

testes = TestList [testeCalculaDistancias]

testeCalculaDistancias = TestList[
	"Distancia entre um ponto e ele mesmo deveria ser 0" ~:
	distancia (Ponto 0 0) (Ponto 0 0 ) ~?= 0
	]
