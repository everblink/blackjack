module KnowsTheDomain
  def the_game
    @game ||= Game.new
  end

  def the_player
    @player ||= Player.new
  end
end

World(KnowsTheDomain)