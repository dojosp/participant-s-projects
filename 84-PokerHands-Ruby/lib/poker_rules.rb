class PokerRules
  @@game_order = [:highest_card, :one_pair, :two_pairs, :three_of_kind,
             :straight, :flush, :full_house, :four_of_kind,
             :straight_flush]

  @@card_order = [:two, :three, :four, :five, :six, :seven, :eight,
                  :nine, :ten, :jack, :queen, :king, :ace]

  @@suit_order = [:clubs, :hearts, :spades, :diamonds]

  def self.stronger_game(game1, game2)
    self.stronger_in_list(@@game_order, game1, game2)
  end

  def self.stronger_card(card1, card2)
    self.stronger_in_list(@@card_order, card1, card2)
  end

  def self.stronger_suit(suit1, suit2)
    self.stronger_in_list(@@suit_order, suit1, suit2)
  end

  private
  def self.stronger_in_list(list, item1, item2)
    item1order = list.index(item1)
    item2order = list.index(item2)
    list[[item1order, item2order].max]
  end
end