class Card

  def initialize(suit, rank)
    @type = rank + suit
  end

  def get_type
    @type
  end

end