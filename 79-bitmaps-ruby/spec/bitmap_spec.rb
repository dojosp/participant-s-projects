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
      b.comprimir.should == 1
    end

    it "deve saber comprimir um mapa de 1 caracter 0" do
      b = Bitmap.new [[0]]
      b.comprimir.should == 0
    end

    it "deve saber comprimir um mapa de 2 caracter iguais" do
      b = Bitmap.new [[0,0]]
      b.comprimir.should == 0
    end
  end
end
