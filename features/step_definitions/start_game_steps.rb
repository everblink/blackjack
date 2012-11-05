require "test/unit"
require "./lib/game"
require "./lib/player"

include Test::Unit::Assertions

Given /^There are no players in the game$/ do
  @game = Game.new
end

When /^a player chooses to play$/ do
  player = Player.new
  @instruction = @game.join player
end

Then /^the player will be prompted to place a wager$/ do
  assert_equal('Please make your bet', @instruction)
end