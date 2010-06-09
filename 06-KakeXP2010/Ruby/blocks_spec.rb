require 'blocks'

describe Storehouse do
  context "storehouse has four columns" do
    before do
      @storehouse = Storehouse.new(4)
    end
    context "storehouse is empty" do
      it "prints state" do
        @storehouse.state.should == "0:\n1:\n2:\n3:\n"
      end
    end
    context "storehouse has one box in each column" do
      before do
        @storehouse.add_box("a", 0)
        @storehouse.add_box("b", 1)
        @storehouse.add_box("c", 2)
        @storehouse.add_box("d", 3)
      end
      it "prints state" do
        @storehouse.state.should == "0: a\n1: b\n2: c\n3: d\n"
      end
    end
    context "storhouse can move box onto another box" do
      before do
          @storehouse.add_box("a", 0)
          @storehouse.add_box("b", 1)
          @storehouse.add_box("c", 2)
          @storehouse.add_box("d", 3)
      end
      it "storehous moves a onto b" do
        @storehouse.move_onto("a", "b")
        @storehouse.state.should == "0:\n1: b a\n2: c\n3: d\n"
      end
      it "moves b onto a" do
        @storehouse.move_onto("b", "a")
        @storehouse.state.should == "0: a b\n1:\n2: c\n3: d\n"
      end
      it "move c onto b after moving a onto b" do 
        @storehouse.move_onto("a", "b")
        @storehouse.move_onto("c", "b")
        @storehouse.state.should == "0: a\n1: b c\n2:\n3: d\n"
      end
    end
  end
  
  # context "storehouse has three columns" do
  #   before do
  #     @storehouse = Storehouse.new(3)
  #   end
  #   context "storehouse is empty" do
  #     it "prints three empty columns" do
  #       @storehouse.state.should == "0: a\n1: b\n2: c\n"
  #     end
  #   end
  # end
end