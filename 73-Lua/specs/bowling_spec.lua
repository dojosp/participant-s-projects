require 'lib.luaspec'
require 'src.bowling'

describe["Bowling"] = function()
  
  it["should know result of empty frame"] = function()
  	expect( Frame("-","-") ).should_be(0)
  end
  
  it["should know result of simple frame"] = function()
  	expect( Frame("1","-") ).should_be(1)
  end
  
  it["should know result of simple frame with other value"] = function()
  	expect( Frame("2","-") ).should_be(2)
  end

  it["should know result of simple frame knocking on second roll"] = function()
  	expect( Frame("2","3") ).should_be(5)
  end
end

spec:report(false)