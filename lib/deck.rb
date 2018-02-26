# deck.rb

require_relative 'card'

class Deck
  # Be able to be instantiated.
  # Be created with 52 Card objects as attributes.
  attr_reader :deck

  def initialize
    values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    suits = ['spades','hearts', 'diamonds', 'clubs']
    @deck = []
    values.each do |value|
      suits.each do |suit|
        @deck << Card.new(value, suit)
      end
    end
  end


  # Have a method called draw which removes a Card from the Deck and returns the removed Card.
  def draw
    # returns a card
  end

  # Have a shuffle method
  def shuffle
    # shuffles the deck
  end

  # Have a count method which returns the number of cards in the Deck.
  def count

  end
end
