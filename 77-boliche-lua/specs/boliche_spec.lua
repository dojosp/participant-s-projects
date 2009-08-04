require 'lib.luaspec'
require 'src.boliche'

describe["Boliche"] = function()
  it["tudo 0 deve somar 0"] = function()
  	expect( soma_jogadas({0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(0)
  end

  it["primeira jogada 1 e 1 e resto zero deve ser 2"] = function()
  	expect( soma_jogadas({1,1,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(2)
  end


 it["primeira jogada 1 e 2 e resto zero deve ser 3"] = function()
  	expect( soma_jogadas({1,2,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(3)
  end
 it["primeira jogada 2 e 2, e resto zero deve ser 4"] = function()
  	expect( soma_jogadas({2,2,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(4)
  end
 it["segunda jogada 2 e 2, e resto zero deve ser 4"] = function()
  	expect( soma_jogadas({0,0,
                          2,2,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(4)
  end
 it["segunda e terceira jogada 2 e 2, e resto zero deve ser 8"] = function()
  	expect( soma_jogadas({0,0,
                          2,2,
                          2,2,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(8)
  end

 it["strike na primeira e 1 na segunda e zero no resto deve dar 12"] = function()
  	expect( soma_jogadas({10,
                          1,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(12)
  end

 it["strike na primeira e 2 na segunda e zero no resto deve dar 14"] = function()
  	expect( soma_jogadas({10,
                          2,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(14)
  end

 it["strike na primeira e 2,2 na segunda e zero no resto deve dar 18"] = function()
  	expect( soma_jogadas({10,
                          2,2,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(18)
  end

  it["strike na segunda e 2,2 na terceira e zero no resto deve dar 18"] = function()
  	expect( soma_jogadas({0,0,
                          10,
                          2,2,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(18)
  end

  it["strike seguido de strike e zero no resto deve dar 30"] = function()
  	expect( soma_jogadas({0,0,
                          10,
                          10,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(30)
  end
  it["tres strikes seguidos e zero no resto deve dar 60"] = function()
  	expect( soma_jogadas({0,0,
                          10,
                          10,
                          10,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0
                         }) ).should_be(60)
  end

  it["tudo strikes deve dar 300"] = function()
  	expect( soma_jogadas({10,
                          10,
                          10,
                          10,
                          10,
                          10,
                          10,
                          10,
                          10,
                          10,10,10
                         }) ).should_be(300)
  end

  it["nao strikes no final"] = function()
  	expect( soma_jogadas({0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          0,0,
                          7,0,
                          5,2
                         }) ).should_be(14)
  end
end

spec:report(false)


