require 'spec'
require 'lib/mirror_maze'

#Percorrer o caminho
#Andar para frente
#Virar no espelho
#Não atravessar a parede
#Saber se saiu do labirinto

describe Labirinto do
	it "andar partir de um ponto e uma direcao" do
		mapa = [["*",".","*"],
				["*",".", "*"]]
				
		partida = [0,1]
		
		direcao = "direita"
		
		labirinto = Labirinto.new(mapa)
		labirinto.proximoPonto(partida,direcao).should == [0,2]
	end
	
	
end