require 'lib.luaspec'
require 'src.bowling'

describe["Bowling"] = function()
  before = function()
  end
  
  it["should know result of empty frame"] = function()
  	local f = Frame("-","-")
  	expect( f:result() ).should_be(0)
  end
end

spec:report(false)