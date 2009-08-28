
require 'lib/fizzbuzz'

describe Fizzbuzz do 

  before do
    @fizzbuzz = Fizzbuzz.new
  end

  describe "tres_divide?" do

    it "Deve devolver true se o numero é divisivel por 3" do
      @fizzbuzz.tres_divide?(3).should be_true
      @fizzbuzz.tres_divide?(999).should be_true
    end 

    it "Deve devolver false se o numero não é divisivel por 3" do
      @fizzbuzz.tres_divide?(5).should be_false
    end 
  end

  describe "cinco_divide?" do 
    it "Deve devolver true se o número é divisível por 5" do
      @fizzbuzz.cinco_divide?(5).should be_true
      @fizzbuzz.cinco_divide?(10).should be_true
    end

    it "Deve devolver false se o número não é divisível por 5" do 
      @fizzbuzz.cinco_divide?(7).should be_false
    end
  end

  describe "contem_tres?" do
    it "Deve devolver true se tem um três no meio" do
      @fizzbuzz.contem_tres?(3).should be_true
      @fizzbuzz.contem_tres?(13).should be_true
      @fizzbuzz.contem_tres?(37).should be_true
    end

    it "Deve devolver false se não tem um três no meio" do
      @fizzbuzz.contem_tres?(7).should be_false
    end
  end

  describe "contem_cinco?" do 
    it "Deve devolver true se tem um cinco no meio" do
      @fizzbuzz.contem_cinco?(5).should be_true
      @fizzbuzz.contem_cinco?(55).should be_true
    end

    it "Deve devolver false se não tem um cinco no meio" do
      @fizzbuzz.contem_cinco?(10).should be_false
    end
  end

  describe "next" do 
    it "Deve devolver 1 no começo do jogo" do
      @fizzbuzz.next.should == "1"
    end

    it "Deve devolver 2 após devolver 1" do
      @fizzbuzz.next.should == "1"
      @fizzbuzz.next.should == "2"
    end

    it "Deve devolver Fizz após devolver 2" do
      @fizzbuzz.next
      @fizzbuzz.next
      @fizzbuzz.next.should == "Fizz"
    end

    it "Deve devolver Buzz após devolver 4" do 
      4.times { @fizzbuzz.next }
      @fizzbuzz.next.should == "Buzz"
    end

    it "Deve devolver Fizz na 13a chamada" do
      12.times { @fizzbuzz.next }
      @fizzbuzz.next.should == "Fizz"
    end

    it "Deve devolver Fizzbuzz na 15a chamada" do 
      14.times { @fizzbuzz.next }
      @fizzbuzz.next.should == "Fizzbuzz"
    end

    it "Deve devolver Fizzbuzz na 35a chamada" do 
      34.times { @fizzbuzz.next }
      @fizzbuzz.next.should == "Fizzbuzz"
    end

    it "Deve devolver Buzz na 58a chamada" do
      57.times { @fizzbuzz.next }
      @fizzbuzz.next.should == "Buzz"
    end
    
    it "Deve devolver Buzz na 100a chamada" do
      99.times { @fizzbuzz.next }
      @fizzbuzz.next.should == "Buzz"
    end 


  end
end
