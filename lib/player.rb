class Player
  attr_accessor :balance

  def initialize
    @balance = 1000
  end

  def bet(game, amount)
    game.place_bet(amount)
    @balance -= amount
  end
end