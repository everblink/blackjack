# encoding: utf-8

require "test/unit"
require "./lib/game"
require "./lib/player"
require "./lib/wager"

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

Given /^The wager is £(\d+) to play$/ do |arg1|
  wager = Wager.new
  @wager_to_play = wager.what_is_the_wager(100)
  assert_equal(100,wager.what_is_the_wager(100))
end

When /^the player has £(\d+)$/ do |arg1|
  player = Player.new
  @player_balance = player.player_balance
  assert_equal(1000,player.player_balance)
end

Then /^take away the wager away from the player's balance$/ do
  player = Player.new
  assert_equal(900,player.update_player_balance(@player_balance,@wager_to_play))
end