require 'spec' 
require 'lib/ultradojo'

describe "MineSweeper" do

    it "should give right game for 1x1 size table" do
        minesweep(['.']).should == [0]
        minesweep(['*']).should == ['*']
    end
    
    it "should give right game for 2x2 size table"  do
        pending
        minesweep([['.','.'],['.','.']]).should == [[0,0],[0,0]]
        minesweep([['*','.'],['.','.']]).should == [['*',1],[1,1]]
    end

        
end

describe "sum 1 around a mine" do
        it "should sum 1 around mine with all neighbours" do
            sum_around([[0,0,0],[0,'*',0],[0,0,0]], 1, 1).should == [[1,1,1],[1,'*',1],[1,1,1]]
        end
    end