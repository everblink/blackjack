class Deck

  include Enumerable

  def initialize

    @cards = Array.new

    (1..52).each do
      @cards << Card.new("Spade","Ace")
    end
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