require 'spec'

require 'lib/MirrorMazes'

describe "MirrorMazes" do
  it "deveria criar um labirinto" do
    maze = MirrorMaze.new "***\n
                           ...\n
                           ***\n"
    maze.should_not be_nil
  end
end
