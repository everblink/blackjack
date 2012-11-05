require "../../lib/deck"
require "test/unit"
require "minitest/reporters"
MiniTest::Reporters.use!

class DeckTest < Test::Unit::TestCase

  def test_deck_contains_52_cards
    deck = Deck.new
    assert_equal(52, deck.count)
  end

end