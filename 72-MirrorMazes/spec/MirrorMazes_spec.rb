require 'spec'

require 'lib/MirrorMazes'

describe "MirrorMazes" do
  it "deveria criar um labirinto" do
    maze = MirrorMaze.new "***\n
                           ...\n
                           ***\n"
    maze.should_not be_nil
  end

  it "deveria identificar entrada e saída" do
    maze = MirrorMaze.new "...\n"
    maze.entrada.should == [0,0]
    maze.saída.should == [0,2]
  end
end
