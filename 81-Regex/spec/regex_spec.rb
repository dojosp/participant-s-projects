require 'lib/regex'

describe Regex do
  context "vazia" do
    it "deve aceitar uma string vazia" do
      r = Regex.new("")
      r.should be_aceita ""
    end

    it "deve aceitar uma string 'ola'" do
      r = Regex.new("")
      r.should be_aceita "ola"
    end
  end

  context "caracter" do

    it "se a regex for 'a' deve aceitar uma string 'a'" do
      r = Regex.new("a")
      r.should be_aceita "a"
    end
    it "se a regex for 'a' não deve aceitar uma string 'b'" do
      r = Regex.new("a")
      r.should_not be_aceita "b"
    end
  end
end

