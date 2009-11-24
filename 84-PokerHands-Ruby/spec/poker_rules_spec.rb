require "spec"
require "../lib/poker_rules"

describe PokerRules do
  it "should know that 1 pair is stronger than highest card" do
    PokerRules.stronger_game(:one_pair, :highest_card).should == :one_pair
    PokerRules.stronger_game(:highest_card, :one_pair).should == :one_pair
  end

  it "should know that 2 pairs is stronger than 1 pair" do
    PokerRules.stronger_game(:one_pair, :two_pairs).should == :two_pairs
    PokerRules.stronger_game(:two_pairs, :one_pair).should == :two_pairs
  end

  it "should know that three of kind is stronger than 2 pairs" do
    PokerRules.stronger_game(:three_of_kind, :two_pairs).should == :three_of_kind
    PokerRules.stronger_game(:two_pairs, :three_of_kind).should == :three_of_kind
  end

  it "should know that straight is stronger than three of kind" do
    PokerRules.stronger_game(:three_of_kind, :straight).should == :straight
    PokerRules.stronger_game(:straight, :three_of_kind).should == :straight
  end

  it "should know that flush is stronger than straight" do
    PokerRules.stronger_game(:flush, :straight).should == :flush
    PokerRules.stronger_game(:straight, :flush).should == :flush
  end

  it "should know that full house is stronger than flush" do
    PokerRules.stronger_game(:flush, :full_house).should == :full_house
    PokerRules.stronger_game(:full_house, :flush).should == :full_house
  end

  it "should know that four of a kind is stronger than full house" do
    PokerRules.stronger_game(:four_of_kind, :full_house).should == :four_of_kind
    PokerRules.stronger_game(:full_house, :four_of_kind).should == :four_of_kind
  end

  it "should know that straight flush is stronger than four of a kind" do
    PokerRules.stronger_game(:four_of_kind, :straight_flush).should == :straight_flush
    PokerRules.stronger_game(:straight_flush, :four_of_kind).should == :straight_flush
  end

  it "should know that 3 is stronger than 2" do
    PokerRules.stronger_card(:three, :two).should == :three
    PokerRules.stronger_card(:two, :three).should == :three
  end

  it "should know that 4 is stronger than 3" do
    PokerRules.stronger_card(:three, :four).should == :four
    PokerRules.stronger_card(:four, :three).should == :four
  end
  
  it "should know that 5 is stronger than 4" do
    PokerRules.stronger_card(:five, :four).should == :five
    PokerRules.stronger_card(:four, :five).should == :five
  end

  it "should know that 6 is stronger than 5" do
    PokerRules.stronger_card(:five, :six).should == :six
    PokerRules.stronger_card(:six, :five).should == :six
  end

  it "should know that 7 is stronger than 6" do
    PokerRules.stronger_card(:seven, :six).should == :seven
    PokerRules.stronger_card(:six, :seven).should == :seven
  end

  it "should know that 8 is stronger than 7" do
    PokerRules.stronger_card(:seven, :eight).should == :eight
    PokerRules.stronger_card(:eight, :seven).should == :eight
  end

  it "should know that 9 is stronger than 8" do
    PokerRules.stronger_card(:nine, :eight).should == :nine
    PokerRules.stronger_card(:eight, :nine).should == :nine
  end

  it "should know that 10 is stronger than 9" do
    PokerRules.stronger_card(:nine, :ten).should == :ten
    PokerRules.stronger_card(:ten, :nine).should == :ten
  end

  it "should know that J is stronger than 10" do
    PokerRules.stronger_card(:jack, :ten).should == :jack
    PokerRules.stronger_card(:ten, :jack).should == :jack
  end

  it "should know that Q is stronger than J" do
    PokerRules.stronger_card(:jack, :queen).should == :queen
    PokerRules.stronger_card(:queen, :jack).should == :queen
  end

  it "should know that K is stronger than Q" do
    PokerRules.stronger_card(:queen, :king).should == :king
    PokerRules.stronger_card(:king, :queen).should == :king
  end

  it "should know that A is stronger than K" do
    PokerRules.stronger_card(:king, :ace).should == :ace
    PokerRules.stronger_card(:ace, :king).should == :ace
  end

  it "should know that hearts is stronger than clubs" do
    PokerRules.stronger_suit(:hearts, :clubs).should == :hearts
    PokerRules.stronger_suit(:clubs, :hearts).should == :hearts
  end

  it "should know that spades is stronger than hearts" do
    PokerRules.stronger_suit(:hearts, :spades).should == :spades
    PokerRules.stronger_suit(:spades, :hearts).should == :spades
  end

  it "should know that diamonds is stronger than spades" do
    PokerRules.stronger_suit(:diamonds, :spades).should == :diamonds
    PokerRules.stronger_suit(:spades, :diamonds).should == :diamonds
  end
end