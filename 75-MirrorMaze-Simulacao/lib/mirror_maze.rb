class Labirinto
	def initialize(mapa)
		@deslocamento = {:esquerda => [0,-1],
						:direita => [0,1],
						:cima => [-1,0],
						:baixo => [1,0]}
		@mapa = mapa
	end

	def proximoPonto (partida, direcao)
		if parede? (partida)
			return partida
		end
		if espelho? (partida)
			if direcao == :baixo
				direcao = :direita
			elsif direcao == :esquerda
				direcao = :cima
			elsif direcao == :cima
				direcao = :esquerda
			elsif direcao == :direita
				direcao = :baixo
			end
		end
	
		deslocamento = @deslocamento[direcao]
		[partida[0] + deslocamento[0],
		 partida[1] + deslocamento[1]]
	end
	
	def parede?(ponto)
		@mapa[ponto[0]][ponto[1]] == "*"
	end
	
	def espelho?(ponto)
		@mapa[ponto[0]][ponto[1]] == "\\" or
		@mapa[ponto[0]][ponto[1]] == "/"
	end
end
