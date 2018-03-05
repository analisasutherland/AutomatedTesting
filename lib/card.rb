
# card.rb
class Card
  attr_reader :suit
  attr_accessor :value
  # SUITS =[:hearts, :spades, :clubs, :diamonds]

  def initialize(value, suit)
    @value = value
    @suit = suit
    # unless (1..13).include? values
    #   raise ArgumentError.new("This is an invalid value #{value}")
    # end
    # unless SUITS.include? suit
    #   raise ArgumentError.new("This is an invalid suit #{suit}")
    # end
    if value < 1 || value > 13
      raise ArgumentError.new("This is an invalid card value #{value}. Acceptable range is 1-13.")
    end
  end

  def to_s
    if value == 1
      face_value = "Ace"
    elsif value == 11
      face_value = "Jack"
    elsif value == 12
      face_value = "Queen"
    elsif value == 13
      face_value = "King"
    else
      face_value = value
    end
    return "#{face_value} of #{suit.to_s}"
  end

end
