require_relative 'spec_helper'

describe Deck do
  # FEEDBACK EDIT: COULD HAVE MADE THE FOLLOWING BECAUSE WE KEEP CALLING DECK.new
  # before do
  #   @deck = Deck.new
  # end
  describe "You can create a new 52 card deck" do
    it "Can be created" do
      # Arrange-----
      deck = Deck.new
      # Act--Assert
      deck.must_be_instance_of Deck
    end

    it "Will have 52 Cards to start" do
      # Arrange-----
      fake_deck = Deck.new
      # Act-------Assert
      fake_deck.deck.length.must_equal 52
      fake_deck.cards.each do |card|
        card must_be_instance_of Cards
      end
    end
  end

  describe "You can draw a card" do
    it "Can draw a random card from our deck" do
      # Arrange -------
      fake_deck = Deck.new
      # Act --------
      card_pick = fake_deck.draw
      # Assert ------
      card_pick.must_be_instance_of Card
    end
    # FEEDBACK EDIT: ADDITIONAL THINGS TO TEST FOR:
    # it "Can remove the card from the deck" do
    #   # Arrange ------
    #   start_length = @deck.cards.length
    #   # Act ---------
    # card = @deck.draw
    #   # Assert ------
    # (@deck.cards.include?card).must_equal false
    # @deck.cards.length.must_equal start_length -1)
    # end

    # it 'lets you draw all 52 cards' do
    # Arrange ------Act
    #   52.times do
    #     @deck.card_draw
    #   end
    # Assert-------------
    #   @deck.cards.must_be :empty?
    # end

    # it "raises an error when you try to draw on an empty deck" do
    #   52.times do
    #     @deck.card_draw
    #   end
    #
    #   proc {
    #     @deck.draw
    #   }.must_raise
    # end
  end

  describe "You can shuffle the deck" do
    it "can shuffle the deck" do
      #FEEDBACK EDIT: COULD HAVE DONE:
      # @deck must_respond_to :shuffle
      # @deck.shuffle
      # Arrange -------
      fake_deck_1 = Deck.new
      fake_deck_2 = Deck.new
      #Act ----------
      f_shuffle_1 = fake_deck_1.shuffle
      f_shuffle_2 = fake_deck_2.shuffle
      # Assert --------
      f_shuffle_1.wont_be_same_as f_shuffle_2
    end
  end

  describe "You can count the cards" do
    it "can accurately count the cards in the deck" do
      # Arrange ----------
      fake_deck = Deck.new
      # Act---------------
      card_count = fake_deck.count
      # Assert-------------
      fake_deck.count.count must_equal 52
    end
  end
end
