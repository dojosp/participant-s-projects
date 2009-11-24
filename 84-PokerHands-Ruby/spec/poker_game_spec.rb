require "spec"
require "../lib/poker_game"

describe PokerGame do
  it "should know that 1 pair is stronger than highest card" do
     game = PokerGame.new
     game.stronger_game(:one_pair, :highest_card).should == :one_pair
  end
end