#oop_blackjack

# ***********
# * CLASSES *
# ***********

class Card
  attr_accessor :value, :suit

  def initialize(value, suit)
    self.value = value
    self.suit = suit
  end

  def to_s
    "#{value} of #{suit}"
  end
end


class Deck
  attr_accessor :cards
  
  def initialize
    self.cards = []
    ['Hearts', 'Diamonds', 'Spades', 'Clubs'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'].each do |value|
        self.cards << Card.new(value, suit)
      end
    end
  end

  def deal
    cards.pop
  end
  
end


class Player
  attr_accessor 

  def initialize

  end

end


class Dealer    
  attr_accessor 

  def initialize

  end

end
