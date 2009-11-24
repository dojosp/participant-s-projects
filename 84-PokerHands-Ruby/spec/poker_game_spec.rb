require "spec"
require "../lib/poker_game"

describe PokerGame do
  it "should know that 1 pair is stronger than highest card" do
     game = PokerGame.new
     game.stronger_game(:one_pair, :highest_card).should == :one_pair
     game.stronger_game(:highest_card, :one_pair).should == :one_pair
  end

  it "should know that 2 pairs is stronger than 1 pair" do
     game = PokerGame.new
     game.stronger_game(:one_pair, :two_pairs).should == :two_pairs
     game.stronger_game(:two_pairs, :one_pair).should == :two_pairs
  end

  it "should know that three of kind is stronger than 2 pairs" do
     game = PokerGame.new
     game.stronger_game(:three_of_kind, :two_pairs).should == :three_of_kind
     game.stronger_game(:two_pairs, :three_of_kind).should == :three_of_kind
  end

  it "should know that straight is stronger than three of kind" do
     game = PokerGame.new
     game.stronger_game(:three_of_kind, :straight).should == :straight
     game.stronger_game(:straight, :three_of_kind).should == :straight
  end

  it "should know that flush is stronger than straight" do
     game = PokerGame.new
     game.stronger_game(:flush, :straight).should == :flush
     game.stronger_game(:straight, :flush).should == :flush
  end
end