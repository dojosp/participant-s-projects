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

  it["primeira jogada 1 e 1 e resto zero deve ser 2"] = function()
  	expect( soma_jogadas({{1,1},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0}
                         }) ).should_be(2)
  end


 it["primeira jogada 1 e 2 e resto zero deve ser 3"] = function()
  	expect( soma_jogadas({{1,2},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0}
                         }) ).should_be(3)
  end
 it["primeira jogada 2 e 2, e resto zero deve ser 4"] = function()
  	expect( soma_jogadas({{2,2},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0},
                          {0,0}
                         }) ).should_be(4)
  end

end

spec:report(false)


