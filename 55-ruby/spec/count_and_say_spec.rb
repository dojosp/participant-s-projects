require 'rubygems'
require 'spec'
require 'lib/count_and_say'

describe 'count-and-say' do

  it "should guive the correct, first number" do
    seq = CountAndSay.new(1)
    seq.first.should == 1
  end

end