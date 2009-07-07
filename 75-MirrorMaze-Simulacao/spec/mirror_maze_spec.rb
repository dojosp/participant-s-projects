require 'spec'
require 'lib/mirror_maze'

#Percorrer o caminho
#Andar para frente -ok
#Virar no espelho
#Saber se eh parede -ok
#Não atravessar a parede -ok
#Saber se saiu do labirinto

describe Labirinto do
	it "andar pra direita a partir de um ponto" do
		mapa = [["*",".","*"],
				["*",".","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([0,1],:direita).should == [0,2]
		labirinto.proximoPonto([1,1],:direita).should == [1,2]
	end
	
	it "andar pra esquerda a partir de um ponto" do
		mapa = [["*",".","*"],
				["*",".","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([0,1],:esquerda).should == [0,0]
		labirinto.proximoPonto([1,1],:esquerda).should == [1,0]

	end
	
	it "andar pra cima a partir de um ponto" do
		mapa = [["*","*"],
				[".","."],
				["*","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([1,0],:cima).should == [0,0]
		labirinto.proximoPonto([1,1],:cima).should == [0,1]

	end
	
	it "andar pra baixo a partir de um ponto" do
		mapa = [["*","*"],
				[".","."],
				["*","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([1,0],:baixo).should == [2,0]
		labirinto.proximoPonto([1,1],:baixo).should == [2,1]
	end
	
	it "saber se posicao eh parede ou nao" do
		mapa = [["*","*"],
				[".","."],
				["*","*"]]
		labirinto = Labirinto.new(mapa)
		
		labirinto.should be_parede([0,0])
		labirinto.should_not be_parede([1,1])
		labirinto.should_not be_parede([1,0])
	end
	
	it "quando esta numa parede nao anda" do
		mapa = [["*","*"],
				[".","."],
				["*","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([0,0],:baixo).should == [0,0]
		labirinto.proximoPonto([0,1],:baixo).should == [0,1]
	end
	
	it "saber se ponto eh um espelho" do
		mapa = [["*",".","*"],
				["/","\\","."]]
		labirinto = Labirinto.new(mapa)
		labirinto.should be_espelho([1,1])
		labirinto.should_not be_espelho([0,1])
		labirinto.should be_espelho([1,0])
	end
	
	it "reflete no espelho" do
		mapa = [["*",".","*"],
				["*","\\","."],
				["*",".","*"]]
		labirinto = Labirinto.new(mapa)
		labirinto.proximoPonto([1,1], :baixo).should == [1,2]
		labirinto.proximoPonto([1,1], :esquerda).should == [0,1]
		labirinto.proximoPonto([1,1], :cima).should == [1,0]
		labirinto.proximoPonto([1,1], :direita).should == [2,1]
	end
end