class Labirinto
	def initialize(mapa)
	end

	def proximoPonto (partida, direcao)
		if direcao == :esquerda
			[partida[0], partida[1] - 1]
		elsif direcao == :direita
			[partida[0], partida[1] + 1] 
		else
			[partida[0] - 1, partida[1]]
		end
	end
end
