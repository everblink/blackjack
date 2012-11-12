class Player
  @balance = 0
  def player_balance
    @balance = 1000
  end

  def update_player_balance(player_balance,wager_to_play)
    @balance = player_balance - wager_to_play
  end
end