require 'lib/minesweeper.rb'
require 'rubygems'
require 'spec' 

describe ' minesweeper test' do 
  
  it 'should return 0 for an empty 1x1 field' do
    sweep('.').should == '0'
  end
  
  it 'should return * for a full 1x1 field' do
    sweep('*').should == '*'
  end
  
  it 'should return 1* for a partially bombed 1x2 field' do
    pending
    sweep('.*').should == '1*'
  end
  
  it "should return *1 for another partially bombed 1x2 fiels" do
    pending
    sweep('*.').should == '*1'
  end
  
  it "should return 1*1 for a full 1x3 field" do
    pending
    sweep('.*.').should == '1*1'
  end
  
  it "should return *10 for another full 1x3 field" do
    pending
    sweep('*..').should == '*10'
  end
end 

describe 'replace dot with 0' do
  it "should return 00 for full dots 1x2" do
    replace([['.', '.']]).should == [[0,0]]
  end
  
  it "should return 000 for full dots 1x3" do
    replace([['.', '.', '.']]).should == [[0,0,0]]
  end

  it "should return 0*0 for dots and mine 1x3" do
    replace([['.', '*', '.']]).should == [[0,'*',0]]
  end
  
  it "should return 000,000 for full dots 2x3" do
    replace([['.', '.', '.'],['.', '.', '.']]).should == [[0,0,0],[0,0,0]]
  end

  it "should return 000,000,000 for full dots 3x3" do
    replace([['.', '.', '.'],['.', '.', '.'],['.','.','.']]).should == [[0,0,0],[0,0,0],[0,0,0]]
  end  
end

describe "add around bombs" do
  it "should return 1*1 for dots and mine 1x3" do
    scan_mines([['.','*','.']]).should == [[1, '*', 1]]
  end
end
