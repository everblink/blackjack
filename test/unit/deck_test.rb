require "../../lib/deck"
require "../../lib/card"
require "test/unit"
require "minitest/reporters"
MiniTest::Reporters.use!

class DeckTest < Test::Unit::TestCase

  def test_deck_contains_52_cards
    deck = Deck.new
    assert_equal(52, deck.count)
  end

  def test_deck_contains_52_unique_cards
    deck = Deck.new
    cards = Array.new

    deck.each do |c|
      cards << c
    end

    assert_equal(52, cards.uniq.length)
  end

  def test_deck_contains_cards
    deck = Deck.new
    assert_instance_of(Card,deck.pop)
  end

end