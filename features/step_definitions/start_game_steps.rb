include Test::Unit::Assertions

Given /^The dealer is ready$/ do
  dealer_status = the_game.dealer_status
  assert_equal("ready", dealer_status)
end

When /^a player chooses to play$/ do
  the_game.join the_player
end

Then /^the player will be prompted to place a wager$/ do
  dealer_status = the_game.dealer_status
  assert_equal('Please make your bet', dealer_status)
end

Given /^The wager is (#{CAPTURE_CASH_AMOUNT}) to play$/ do |amount|
  assert_equal(amount, the_game.minimum_bet)
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

