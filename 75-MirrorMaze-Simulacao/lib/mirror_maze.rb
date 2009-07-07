class Labirinto
	def initialize(mapa)
		@deslocamento = {:esquerda => [0,-1],
						:direita => [0,1],
						:cima => [-1,0],
						:baixo => [1,0]}
	end

	def proximoPonto (partida, direcao)
		[partida[0] + @deslocamento[direcao][0],
		 partida[1] + @deslocamento[direcao][1]]
	end
end
