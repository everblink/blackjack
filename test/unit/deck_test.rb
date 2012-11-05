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

    #TODO need to make sure that it checks the card's uniqueness
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

    expected = Array.new
    expected << "AceSpade"
    expected << "OneSpade"
    expected << "TwoSpade"
    expected << "ThreeSpade"
    expected << "FourSpade"
    expected << "FiveSpade"
    expected << "SixSpade"
    expected << "SevenSpade"
    expected << "EightSpade"
    expected << "NineSpade"
    expected << "TenSpade"
    expected << "JackSpade"
    expected << "QueenSpade"
    expected << "KingSpade"

    expected << "AceHeart"
    expected << "OneHeart"
    expected << "TwoHeart"
    expected << "ThreeHeart"
    expected << "FourHeart"
    expected << "FiveHeart"
    expected << "SixHeart"
    expected << "SevenHeart"
    expected << "EightHeart"
    expected << "NineHeart"
    expected << "TenHeart"
    expected << "JackHeart"
    expected << "QueenHeart"
    expected << "KingHeart"

    expected << "AceDiamond"
    expected << "OneDiamond"
    expected << "TwoDiamond"
    expected << "ThreeDiamond"
    expected << "FourDiamond"
    expected << "FiveDiamond"
    expected << "SixDiamond"
    expected << "SevenDiamond"
    expected << "EightDiamond"
    expected << "NineDiamond"
    expected << "TenDiamond"
    expected << "JackDiamond"
    expected << "QueenDiamond"
    expected << "KindDiamond"

    expected << "AceClub"
    expected << "OneClub"
    expected << "TwoClub"
    expected << "ThreeClub"
    expected << "FourClub"
    expected << "FiveClub"
    expected << "SixClub"
    expected << "SevenClub"
    expected << "EightClub"
    expected << "NineClub"
    expected << "TenClub"
    expected << "JackClub"
    expected << "QueenClub"
    expected << "KindClub"

    found = false
    deck.each do |c|
      found = true if c.get_type == expected
    end

    assert_equal(true, found)
  end

end