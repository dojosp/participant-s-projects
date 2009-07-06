require 'spec'
require 'lib/mirror_maze'

#Percorrer o caminho
#Andar para frente
#Virar no espelho
#Não atravessar a parede
#Saber se saiu do labirinto

describe Labirinto do
	it "andar pra direita a partir de um ponto" do
		mapa = [["*",".","*"],
				["*",".","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([0,1],:direita).should == [0,2]
		labirinto.proximoPonto([1,1],:direita).should == [1,2]
	end
	
end