require 'lib/bitmap'

describe Bitmap do
  it "deve ser possivel criá-lo" do
    b = Bitmap.new [[1]]
  end

  it "deve saber armazenar um bitmap simples" do
    b = Bitmap.new [[1]]
    b.bitmap.should == [[1]]
  end

  it "deve saber armazenar um bitmap simples, mas com zero" do
    b = Bitmap.new [[0]]
    b.bitmap.should == [[0]]
  end

  describe "quando comprimi um bitmap" do
    it "deve saber comprimir um mapa de 1 caracter 1" do
      b = Bitmap.new [[1]]
      b.comprimir.should == '1'
    end

    it "deve saber comprimir um mapa de 1 caracter 0" do
      b = Bitmap.new [[0]]
      b.comprimir.should == '0'
    end

    it "deve saber comprimir um mapa de 2 caracter iguais 00" do
      b = Bitmap.new [[0,0]]
      b.comprimir.should == '0'
    end

    it "deve saber comprimir um mapa de 2 caracter iguais 11" do
      b = Bitmap.new [[1,1]]
      b.comprimir.should == '1'
    end

    it "deve saber comprimir um mapa de 2 caracter diferente 01" do
      b = Bitmap.new [[0,1]]
      b.comprimir.should == 'D01'
    end

    it "deve saber comprimir um mapa de 2 caracter diferente 10" do
      b = Bitmap.new [[1,0]]
      b.comprimir.should == 'D10'
    end

    it "deve saber comprimir um mapa de 4 caracter iguais 0000" do
      b = Bitmap.new [[0,0],
                      [0,0]]
      b.comprimir.should == '0'
    end

    it "deve saber comprimir um mapa de 4 caracter diferentes 0001" do
  pending
      b = Bitmap.new [[0,0],
                      [0,1]]
      b.comprimir.should == 'D0001'
    end

  end

  describe 'heterogeneo' do
    it "deve reconhecer bitmap de 1 bit como não heterogeneo" do
      b = Bitmap.new [[1]]
      b.heterogeneo?.should == false
    end
  end
end
