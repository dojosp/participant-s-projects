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
end
