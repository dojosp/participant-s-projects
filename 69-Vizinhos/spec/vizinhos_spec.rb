require 'rubygems'
require 'spec'
require 'lib/vizinhos'

describe "Vizinhanca" do
  it "deveria saber adicionar 1 vizinho" do
    vizinhanca = Vizinhanca.new 2
    vizinhanca.adiciona 0, 1
    vizinhanca.vizinhos[0].size.should == 1
    vizinhanca.vizinhos[0].should == [1]
  end

  it "deveria saber adicionar 2 vizinhos ao morador 1" do
    vizinhanca = Vizinhanca.new 3
    vizinhanca.adiciona 1, 0
    vizinhanca.adiciona 1, 2
    vizinhanca.vizinhos[1].size.should == 2
    vizinhanca.vizinhos[1].should == [0,2]
  end

  it "deveria saber adicionar 2 vizinhos ao morador 0" do
    vizinhanca = Vizinhanca.new 3
    vizinhanca.adiciona 0, 1
    vizinhanca.adiciona 0, 2
    vizinhanca.vizinhos[0].size.should == 2
    vizinhanca.vizinhos[0].should == [1,2]
  end

  it "nao deveria si propria como vizinho" do
    vizinhanca = Vizinhanca.new 2
    vizinhanca.adiciona 0, 0
    vizinhanca.adiciona 0, 1
    vizinhanca.vizinhos[0].size.should == 1
    vizinhanca.vizinhos[0].should == [1]
  end

  it "deveria retornar o morador 1 quando lista de vizinhos eh [[1,2],[2],[0,1]]" do
    vizinhanca = Vizinhanca.new 3
    vizinhanca.adiciona 0,1
    vizinhanca.adiciona 0,2
    vizinhanca.adiciona 1,2
    vizinhanca.adiciona 2,0
    vizinhanca.adiciona 2,1
    vizinhanca.melhor_lugar.should == [1]
  end

  it "deveria retornar o morador 2 quando lista de vizinhos eh [[1,2],[0,2],[0]]" do
    vizinhanca = Vizinhanca.new 3
    vizinhanca.adiciona 0, 1
    vizinhanca.adiciona 0, 2
    vizinhanca.adiciona 1, 2
    vizinhanca.adiciona 1, 0
    vizinhanca.adiciona 2, 0
    vizinhanca.melhor_lugar.should == [2]
  end

end
