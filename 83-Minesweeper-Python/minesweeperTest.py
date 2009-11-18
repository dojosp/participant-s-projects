#!/usr/bin/env python

import unittest
import minesweeper
from minesweeper import CampoMinado

class TestesDoCampoMinado(unittest.TestCase):
	def testeCampoMinadoVazioEhCriadoComTamanho(self):
		campo = CampoMinado(5, 5)
		self.assertEquals([[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]], campo.matriz)
		campo = CampoMinado(3, 4)
		self.assertEquals([[0,0,0,0],[0,0,0,0],[0,0,0,0]], campo.matriz)
	
	def testeColocandoBombaNaPosicao0x0DeUmCampo1x1(self):
		campo = CampoMinado(1, 1)
		campo.adicionaBomba(0,0)
		self.assertEquals('*', campo.matriz[0][0])
		
	def testeColocandoBombaNaPosicao0x0DeUmCampo1x1ComUmaBomba(self):
		campo = CampoMinado(1, 1)
		campo.adicionaBomba(0,0)
		campo.adicionaBomba(0,0)
		self.assertEquals('*', campo.matriz[0][0])
		
	def testeColocandoBombaNaPosicaoMenos42x42DeUmCampo1x1(self):
		campo = CampoMinado(1, 1)
		campo.adicionaBomba(-42,42)
		self.assertEquals([[0]], campo.matriz)
	
	def testeColocandoBombaNaPosicao1x1DeUmCampo1x1(self):
		campo = CampoMinado(1, 1)
		campo.adicionaBomba(1,1)
		self.assertEquals([[0]], campo.matriz)
		
	def testeColocandoUmaBombaEmUmCampoMaior(self):
		campo = CampoMinado(2,3)
		campo.adicionaBomba(1,2)
		self.assertEquals([ [0,1, 1 ],
							[0,1,'*']], campo.matriz)
		self.assertEquals('*', campo.matriz[1][2])
	
	def testeColocandoUmaBombaNoMeioDeUmCampo3x3(self):
		campo = CampoMinado(3,3)
		campo.adicionaBomba(1,1)
		self.assertEquals([ [1, 1, 1 ],
							[1,'*',1],
							[1, 1, 1]], campo.matriz)
		
		
if __name__ == '__main__':
    unittest.main()
