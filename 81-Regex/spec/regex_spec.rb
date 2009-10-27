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
      @r.should_not be_aceita "ba"
    end

    it "deve aceitar 'acab'" do
      @r.should be_aceita "acab"
    end

    it "deve aceitar 'abac'" do
      @r.should be_aceita "abac"
    end

    it "não deve aceitar 'a'" do
      @r.should_not be_aceita "a"
    end
  end

  context "concatenacao abc" do
    before :each do
      @r = Regex.new "abc"
    end

    it "deveria aceitar abc" do
      @r.should be_aceita "abc"
    end

    it "nao deveria aceitar auc" do
      @r.should_not be_aceita "auc"
    end
  end
end

