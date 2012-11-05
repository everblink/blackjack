require_relative "card"

class Deck

  include Enumerable

  def initialize

    @cards = [
      Card.new("Spade", "Ace"),
      Card.new("Spade", "Two"),
      Card.new("Spade", "Three"),
      Card.new("Spade", "Four"),
      Card.new("Spade", "Five"),
      Card.new("Spade", "Six"),
      Card.new("Spade", "Seven"),
      Card.new("Spade", "Eight"),
      Card.new("Spade", "Nine"),
      Card.new("Spade", "Ten"),
      Card.new("Spade", "Jack"),
      Card.new("Spade", "Queen"),
      Card.new("Spade", "King"),
      Card.new("Heart", "Ace"),
      Card.new("Heart", "Two"),
      Card.new("Heart", "Three"),
      Card.new("Heart", "Four"),
      Card.new("Heart", "Five"),
      Card.new("Heart", "Six"),
      Card.new("Heart", "Seven"),
      Card.new("Heart", "Eight"),
      Card.new("Heart", "Nine"),
      Card.new("Heart", "Ten"),
      Card.new("Heart", "Jack"),
      Card.new("Heart", "Queen"),
      Card.new("Heart", "King"),
      Card.new("Club", "Ace"),
      Card.new("Club", "Two"),
      Card.new("Club", "Three"),
      Card.new("Club", "Four"),
      Card.new("Club", "Five"),
      Card.new("Club", "Six"),
      Card.new("Club", "Seven"),
      Card.new("Club", "Eight"),
      Card.new("Club", "Nine"),
      Card.new("Club", "Ten"),
      Card.new("Club", "Jack"),
      Card.new("Club", "Queen"),
      Card.new("Club", "King"),
      Card.new("Diamond", "Ace"),
      Card.new("Diamond", "Two"),
      Card.new("Diamond", "Three"),
      Card.new("Diamond", "Four"),
      Card.new("Diamond", "Five"),
      Card.new("Diamond", "Six"),
      Card.new("Diamond", "Seven"),
      Card.new("Diamond", "Eight"),
      Card.new("Diamond", "Nine"),
      Card.new("Diamond", "Ten"),
      Card.new("Diamond", "Jack"),
      Card.new("Diamond", "Queen"),
      Card.new("Diamond", "King"),
    ]

  end

  def each(&block)
    @cards.each do |card|
      block.call(card)
    end
  end

  def pop
    @cards.pop
  end

end