require 'lib/regex'

describe Regex do
  context "vazia" do
    before :each do
      @r = Regex.new("")
    end

    it "deve aceitar uma string vazia" do
      @r.should be_aceita ""
    end

    it "deve aceitar uma string 'ola'" do
      @r.should be_aceita "ola"
    end
  end

  context "caracter a" do
    before :each do
      @r = Regex.new("a")
    end

    it "deve aceitar uma string 'a'" do
      @r.should be_aceita "a"
    end

    it "não deve aceitar uma string 'b'" do
      @r.should_not be_aceita "b"
    end

    it "não deve aceitar uma string 'c'" do
      @r.should_not be_aceita "c"
    end

    it "deve aceitar uma string 'ab'" do
      @r.should be_aceita "ab"
    end

    it "deve aceitar uma string 'ba'" do
      @r.should be_aceita "ba"
    end
  end

  context "concatenacao ab" do
    before :each do
      @r = Regex.new "ab"
    end

    it "deve aceitar 'ab'" do
      @r.should be_aceita "ab"
    end


    it "não deve aceitar 'ba'" do
      pending do
        @r.should_not be_aceita "ba"
      end
    end
  end
end

