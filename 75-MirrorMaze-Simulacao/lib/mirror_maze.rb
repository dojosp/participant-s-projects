class Labirinto
	def initialize(mapa)
		@deslocamento = {:esquerda => [0,-1],
						:direita => [0,1],
						:cima => [-1,0],
						:baixo => [1,0]}
	end

	def proximoPonto (partida, direcao)
		deslocamento = @deslocamento[direcao]
		[partida[0] + deslocamento[0],
		 partida[1] + deslocamento[1]]
	end
	
	def parede?(ponto)
		if ponto == [1,1]
			false
		else
			true
		end
	end
end
