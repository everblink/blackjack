class Game

  attr_reader :dealer_status

  def initialize
    @players = Array.new
    @dealer_status = "ready"
    @current_bet = 0
  end

  def join(player)
    @players << player
    @dealer_status = "Please make your bet"
  end

  def place_bet(amount)
    @current_bet = amount
  end

  def minimum_bet
    100
  end
end