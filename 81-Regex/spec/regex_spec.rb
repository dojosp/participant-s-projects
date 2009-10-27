require 'lib/regex'

describe Regex do
  context "vazia" do
    it "deve aceitar uma string vazia" do
      r = Regex.new("")
      r.aceita?("").should == true
    end
  end
end

