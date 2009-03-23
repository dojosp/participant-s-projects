require 'rubygems'
require 'spec'
require 'lib/vizinhos'

describe "Vizinhanca" do
  it "deveria saber adicionar 1 vizinho" do
    vizinhanca = Vizinhanca.new 2
    vizinhanca.adiciona 1, 2
    vizinhanca.vizinhos[0].size.should == 1
  end
end
