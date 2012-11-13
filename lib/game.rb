class Game

  def initialize
    @players = Array.new
  end

  def join(player)
    @players << player
    "Please make your bet"
  end
end