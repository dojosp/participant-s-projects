require 'lib/earthquake'

describe TerrenoDeCultivo do

  it "deveria saber criar um terreno quadrado" do
    terreno = TerrenoDeCultivo.new([
                                    [0,0],
                                    [0,1],
                                    [1,1],
                                    [1,0]
                                   ])
    terreno.area().should == 1

    terreno = TerrenoDeCultivo.new([
                                    [0,0],
                                    [0,2],
                                    [2,2],
                                    [2,0]
                                   ])
    terreno.area().should == 4

    terreno = TerrenoDeCultivo.new([
                                    [0,0],
                                    [0,3],
                                    [3,3],
                                    [3,0]
                                   ])
    terreno.area().should == 9

    terreno = TerrenoDeCultivo.new([
                                    [0,3],
                                    [0,0],
                                    [3,0],
                                    [3,3]
                                   ])
    terreno.area().should == 9

        terreno = TerrenoDeCultivo.new([
                                    [1,3],
                                    [1,1],
                                    [3,1],
                                    [3,3]
                                   ])
    terreno.area().should == 4

    terreno = TerrenoDeCultivo.new([
                                    [0,0],
                                    [0,1.5],
                                    [1.5,1.5],
                                    [1.5,0]
                                   ])
    terreno.area().should == 2.25

    terreno = TerrenoDeCultivo.new([
                                    [0,0],
                                    [0,3],
                                    [2,3],
                                    [2,0]
                                   ])
    terreno.area().should == 6

    terreno = TerrenoDeCultivo.new([
                                    [0,3],
                                    [2,3],
                                    [2,0],
                                    [0,0]
                                   ])
    terreno.area().should == 6

    terreno = TerrenoDeCultivo.new([
                                    [1,0],
                                    [2,1],
                                    [1,2],
                                    [0,1]
                                   ])
    terreno.area().to_i().should == 2
  end

  it "deveria saber criar um terreno triangular" do

    terreno = TerrenoDeCultivo.new([
                                    [1,0],
                                    [0,1],
                                    [0,0]
                                   ]
                                  )
    terreno.area().should == 0.5

    terreno = TerrenoDeCultivo.new([
                                    [2,0],
                                    [0,2],
                                    [0,0]
                                   ]
                                  )
    terreno.area().should == 2

    terreno = TerrenoDeCultivo.new([
                                    [0,0],
                                    [0,2],
                                    [2,0]
                                   ]
                                  )
    terreno.area().should == 2

  end


end
