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

  def test_deck_contains_correct_cards
    deck = Deck.new

    expected_cards = %w(
      ace_spade
      one_spade
      two_spade
      three_spade
      four_spade
      five_spade
      six_spade
      seven_spade
      eight_spade
      nine_spade
      ten_spade
      jack_spade
      queen_spade
      king_spade
      ace_heart
      two_heart
      three_heart
      four_heart
      five_heart
      six_heart
      seven_heart
      eight_heart
      nine_heart
      ten_heart
      jack_heart
      queen_heart
      king_heart
      ace_diamond
      two_diamond
      three_diamond
      four_diamond
      five_diamond
      six_diamond
      seven_diamond
      eight_diamond
      nine_diamond
      ten_diamond
      jack_diamond
      queen_diamond
      king_diamond
      ace_club
      two_club
      three_club
      four_club
      five_club
      six_club
      seven_club
      eight_club
      nine_club
      ten_club
      jack_club
      queen_club
      king_club)

    deck.each do |c|
      assert(expected_cards.include?(c.to_s))
    end
  end

end