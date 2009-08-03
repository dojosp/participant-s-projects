require 'lib.luaspec'
require 'src.boliche'

describe["Boliche"] = function()  
  it["tudo 0 deve somar 0"] = function()
  	expect( soma_jogadas({{0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0}
                         }) ).should_be(0)
  end
end

spec:report(false)


