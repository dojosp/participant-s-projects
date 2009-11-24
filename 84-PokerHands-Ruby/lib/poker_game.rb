class PokerGame
  def initialize
    @order = [:highest_card, :one_pair, :two_pairs, :three_of_kind,
              :straight, :flush]
  end

  def stronger_game(game1, game2)
    game1order = @order.index(game1)
    game2order = @order.index(game2)
    @order[[game1order, game2order].max]
  end
end