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

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.

drawn3 = []
drawn3 << deck.draw
p drawn3
p deck.cards.size