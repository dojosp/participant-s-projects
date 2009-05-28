require 'lib.luaspec'
require 'src.bowling'

describe["Bowling"] = function()
  before = function()
  	bowling = Bowling()
  end
  
  it["should start empty"] = function()
  	expect( bowling:finalResult() ).should_be(0)
  end
  
  it["should know result of empty frame"] = function()
  	expect( Frame("-","-") ).should_be(0)
  end
  
  it["should know result of simple frame"] = function()
  	expect( Frame("1","-") ).should_be(1)
  end
  
  it["should know result of simple frame with other value"] = function()
  	expect( Frame("2","-") ).should_be(2)
  end

  it["should know result of simple frame knocking on both rolls"] = function()
  	expect( Frame("2","3") ).should_be(5)
  end

  it["should know result of another simple frame knocking on both rolls"] = function()
  	expect( Frame("5","1") ).should_be(6)
  end
  
   it["should return strike"] = function()
    expect(Frame("X")).should_be(10)
  end

  it["should sum two simple frames"] = function()
  	local sf = SumFrames(Frame("1","1"), Frame("1","1"))
  	expect(sf).should_be(4)
  end
  
  it["should sum two frames after strike"] = function()
  	local sf = SumFrames(Frame("X"), Frame("1","1"))
  	expect(sf).should_be(14)
  end
  
  it["should sum two frames after spare"] = pending
  --[[
  function()
  	local sf = SumFrames(Frame("7", "/"), Frame("1","1"))
  	expect(sf).should_be(13)
  end
  ]]
  
  
  

end

spec:report(false)


