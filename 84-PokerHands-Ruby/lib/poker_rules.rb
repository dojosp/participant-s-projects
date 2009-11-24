class PokerRules
  @@order = [:highest_card, :one_pair, :two_pairs, :three_of_kind,
             :straight, :flush, :full_house, :four_of_kind,
             :straight_flush]

  @@card_order = [:two, :three, :four, :five, :six, :seven, :eight,
                  :nine, :ten, :jack, :queen, :king, :ace]

  def self.stronger_game(game1, game2)
    game1order = @@order.index(game1)
    game2order = @@order.index(game2)
    @@order[[game1order, game2order].max]
  end

  def self.stronger_card(card1, card2)
    card1order = @@card_order.index(card1)
    card2order = @@card_order.index(card2)
    @@card_order[[card1order, card2order].max]
  end
end