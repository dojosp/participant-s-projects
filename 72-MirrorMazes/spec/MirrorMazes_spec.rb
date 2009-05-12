require 'spec'

require 'lib/MirrorMazes'

describe "MirrorMazes" do
  it "deveria criar um labirinto" do
    maze = MirrorMaze.new "***
                           ...
                           ***"
    maze.should_not be_nil
  end

  it "deveria identificar entrada e saída" do
    maze = MirrorMaze.new "*.*"
    maze.entrada.should == [0,1]
    maze.saida.should == [0,1]

    maze = MirrorMaze.new "***
                           ...
                           ***"
    maze.entrada.should == [1,0]
    maze.saida.should == [1,2]
  end


end
