# encoding: utf-8

include Test::Unit::Assertions

CAPTURE_CASH_AMOUNT = Transform /^£(\d+)$/ do |digits|
  digits.to_i
end

Given /^There are no players in the game$/ do
  the_game
end

When /^a player chooses to play$/ do
  @instruction = the_game.join the_player
end

Then /^the player will be prompted to place a wager$/ do
  assert_equal('Please make your bet', @instruction)
end

Given /^The wager is (#{CAPTURE_CASH_AMOUNT}) to play$/ do |amount|
  @wager = Wager.new(amount)
  assert_equal(amount, @wager.amount)
end

When /^the player has (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  assert_equal(amount, the_player.balance)
end

When /^the player bets (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  the_player.bet(the_game, amount)
end

Then /^the players balance will be (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  assert_equal(amount, the_player.balance)
end

