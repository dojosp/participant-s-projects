#!/usr/bin/env python

class CampoMinado(object):
	def __init__(self, altura, largura):
		self.matriz = []
		for i in range (altura):
			self.matriz.append ([0]*largura)

	def poeUmValido(self, linha, coluna):
		if(self.posicaoValida(linha, coluna)):
			self.matriz[linha][coluna] = 1	
			
	def adicionaBomba(self, linha, coluna):
		if(self.posicaoValida(linha, coluna)):
			self.poeUmValido(linha-1, coluna-1)
			self.poeUmValido(linha-1, coluna)
			self.poeUmValido(linha-1, coluna+1)
			self.poeUmValido(linha, coluna-1)
			self.matriz[linha][coluna] = '*'
			self.poeUmValido(linha, coluna+1)
			self.poeUmValido(linha+1, coluna-1)
			self.poeUmValido(linha+1, coluna)
			self.poeUmValido(linha+1, coluna+1)

	def posicaoValida(self, linha, coluna):
		linhaValida = linha >= 0 and linha < len(self.matriz)
		colunaValida = coluna >= 0 and coluna < len(self.matriz[0])
		return linhaValida and colunaValida