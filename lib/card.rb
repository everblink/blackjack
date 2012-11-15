class Card
  def initialize(suit, rank)
    @rank = rank.downcase
    @suit = suit.downcase
  end

  def ==(y)
    to_s == y.to_s
  end

  def to_s
    @rank + '_' + @suit
  end
end