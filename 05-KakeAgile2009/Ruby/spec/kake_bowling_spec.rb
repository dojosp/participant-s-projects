require 'spec'

require 'lib/kake_bowling'

describe KakeBowling do
  it "should return 0 with all gutters" do
    KakeBowling.game([0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0]).should be(0)
  end

  it "should return 1 with first throw hits one pin down and rest is gutters" do
    KakeBowling.game([1,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0]).should be(1)
  end

  it "should add all pins down and nothing else when no bonus" do
    KakeBowling.game([1,2,
                      3,4,
                      0,5,
                      1,3,
                      2,5,
                      4,4,
                      1,0,
                      0,4,
                      3,1,
                      2,6]).should be(51)
  end

  it "should add pins of next two rolls when strike" do
    KakeBowling.game([0,0,
                      10,nil,
                      1,2,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0]).should be(16)
  end

  it "should add pins of next two rolls when strike at last frame" do
    KakeBowling.game([0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      0,0,
                      10,nil,
                      2,3]).should be(15)
  end
end
