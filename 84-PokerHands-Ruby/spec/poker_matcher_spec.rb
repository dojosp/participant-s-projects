require "spec"
require "../lib/poker_matcher"

describe PokerMatcher do
  it "should recognize the hand A2345 as highest card" do
    hand = [[:ace, :diamonds],[:two, :clubs],[:three, :spades],
            [:four, :clubs],[:five, :clubs]]
    PokerMatcher.recognize(hand).should == :highest_card
  end
end