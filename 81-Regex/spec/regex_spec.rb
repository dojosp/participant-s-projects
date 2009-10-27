require 'lib/regex'

describe Regex do
  context "vazia" do
    it "deve aceitar uma string vazia" do
      r = Regex.new("")
      r.should be_aceita ""
    end
  end
end

