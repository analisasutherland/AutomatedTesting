
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do
    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          card.must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      proc {Card.new(0, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :clubs)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # Arrange
      card = Card.new(2, :diamonds)
      card_2 = Card.new(10, :clubs)
      # Act ----- Assert
      card.to_s.must_equal "2 of diamonds"
      card_2.to_s.must_equal "10 of clubs"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # Arrange
      card_a = Card.new(1, :spades)
      card_J = Card.new(11, :spades)
      card_Q = Card.new(12, :spades)
      card_K = Card.new(13, :spades)
      # Act ----- Assert
      card_a.to_s.must_equal "Ace of spades"
      card_J.to_s.must_equal "Jack of spades"
      card_Q.to_s.must_equal "Queen of spades"
      card_K.to_s.must_equal "King of spades"
      # For example: "Queen of hearts"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      # Arrange---
      card = Card.new(2, :spades)
      # Act ------- Assert
      card.value.must_equal 2
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      # Arrange---
      card = Card.new(2, :spades)
      # Act ------- Assert
      card.suit.must_equal :spades
    end
  end
end
