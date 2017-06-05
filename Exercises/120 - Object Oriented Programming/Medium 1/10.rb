class Card
  include Comparable
  attr_reader :rank, :suit
  FACE_VALUES = {'Jack'=> 11, 'Queen'=> 12, 'King'=>13, 'Ace'=> 14}

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

  def value
    if @rank.to_s.to_i == @rank
      value = @rank
    else
      value = FACE_VALUES[@rank]
    end
  end

  # def <=>(other_card)
  #   value <=> other_card.value
  # end
end

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  attr_reader :cards

  def initialize
    @cards = []
    RANKS.each do |rank|
      SUITS.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def to_s
    @cards.to_s
  end

  def draw
    if @cards.empty?
      initialize
    end
    card = @cards.sample
    @cards.delete(card)
    card
  end

  def reset
    initialize
  end
end

class PokerHand
  def initialize(deck)
    if deck.is_a? Deck
      @cards = []
      5.times {@cards << deck.draw}
    else
      @cards = deck
    end
  end

  def print
    p @cards
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  def list_of_ranks
    @cards.map { |card| card.rank }
  end

  def count_of_ranks
    count = {}
    list_of_ranks.each do |rank|
      if count[rank]
        count[rank] += 1
      else
        count[rank] = 1
      end
    end
    count
  end

  def list_of_suits
    @cards.map { |card| card.suit }
  end

  private

  def royal_flush?
    sorted_values = @cards.map {|card| card.value}.sort
    sorted_values.first == 10 && straight_flush?
  end

  def straight_flush?
    straight? && flush?
  end

  def n_of_a_kind?(n)
    count_of_ranks.values.any?{|count| count == n}
  end

  def four_of_a_kind?
    n_of_a_kind?(4)
  end

  def full_house?
    n_of_a_kind?(3) && n_of_a_kind?(2)
  end

  def flush?
    list_of_suits.uniq.size == 1
  end

  def straight?
    sorted_values = @cards.map {|card| card.value}.sort
    new_arr = []
    sorted_values.each_with_index do |value, index|
      next if index == 0
      if value != sorted_values[index - 1] + 1
        return false
        break
      end
    end
  end

  def three_of_a_kind?
    n_of_a_kind?(3)
  end

  def two_pair?
    n_of_a_kind?(2) && list_of_ranks.uniq.size == 3
  end

  def pair?
    n_of_a_kind?(2)
  end
end

hand = PokerHand.new(Deck.new)
#hand.print
# puts hand.evaluate

# # Danger danger danger: monkey
# # patching for testing purposes.
# class Array
#   alias_method :draw, :pop
# end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
