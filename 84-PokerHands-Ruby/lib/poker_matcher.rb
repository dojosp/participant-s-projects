class PokerMatcher
  def self.recognize(hand)
    if(hand[0][0] == hand[1][0])
      :one_pair
    else
      :highest_card
    end
  end
end