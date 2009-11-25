require "spec"
require "../lib/poker_matcher"

describe PokerMatcher do
  it "should recognize the hand A2345 as highest card" do
    hand = [[:ace, :diamonds],[:two, :clubs],[:three, :spades],
            [:four, :clubs],[:five, :clubs]]
    PokerMatcher.recognize(hand).should == :highest_card
  end

  it "should recognize the hand AA345 as one pair" do
    hand = [[:ace, :diamonds],[:ace, :clubs],[:three, :spades],
            [:four, :clubs],[:five, :clubs]]
    PokerMatcher.recognize(hand).should == :one_pair
  end
end