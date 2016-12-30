# @@computer_hand = []
# @@player_hand = []
# @@deck = []


def init_game
  @@computer_total = 0
  @@player_total = 0
  @@computer_hand = []
  @@player_hand = []
  @@deck = []
  @@suits = ['diamond', 'spade', 'heart', 'club']
  @@face_values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
end

def init_deck
  @@suits.each do |suit|
    @@face_values.each do |face_values|
      @@deck << [suit, face_values]
    end
  end
end

def deal(role)
  card = @@deck.sample
  @@deck.delete(card)
  if role == 'computer'
    @@computer_hand << card
  else
    @@player_hand << card
  end
end

def get_hand_value(role)
  value_without_aces = 0
  final_value = 0
  num_of_aces = 0

  if role == 'computer'
    @@computer_hand.each do |card|
      if ['jack', 'queen', 'king'].include? card[1]
        final_value += 10
      elsif card[1] == 'ace'
        final_value += 11
      else 
        final_value += card[1].to_i
      end
    end
  else
    @@player_hand.each do |card|
      if ['jack', 'queen', 'king'].include? card[1]
        value_without_aces += 10
      elsif card[1] == 'ace'
        num_of_aces += 1
      else 
        value_without_aces += card[1].to_i
      end
    end

    if num_of_aces > 0
      num_of_aces_valued_1 = 0
      num_of_aces_valued_11 = num_of_aces
      loop do
        final_value = 11 * num_of_aces_valued_11 + 1 * num_of_aces_valued_1 + value_without_aces
        break if final_value <= 21
        num_of_aces_valued_11 -= 1
        num_of_aces_valued_1 += 1
      end
    else
      final_value = value_without_aces
    end

  end
  return final_value
end

def show_hand()
  puts "The computer has: " + @@computer_hand.first[1].to_s + " and unknown"
  player_string = ""
  @@player_hand.each do |card|
    player_string << card[1].to_s
    if card != @@player_hand.last
      player_string << " and "
    end
  end
  puts "You have: " + player_string
end

loop do
  puts "======Welcome to 21======"
  init_game()
  init_deck()
  2.times do
    deal('computer')
    deal('player')
  end

  loop do
    break if get_hand_value('player') > 21

    show_hand()
    puts "Hit? (y/n)"
    hit = gets.chomp
    break if hit == 'n'
    deal('player')
  end

  loop do
    break if get_hand_value('player') > 21 || get_hand_value('computer') >= 17
    show_hand()
    puts "Dealer hits."
    deal('computer')
  end

  puts "Dealer's hand is #{@@computer_hand}"
  puts "Your hand is #{@@player_hand}"

  puts "Dealer's hand's value is #{get_hand_value('computer')}"
  puts "Your hand's value is #{get_hand_value('player')}"

  #check whose hand value is greater
  if get_hand_value('player') > 21
    puts "BOO! YOU BUSTED."
    puts "DEALER WINS."
  elsif get_hand_value('computer') > 21
    puts "HA! DEALER BUSTED."
    puts "YOU WIN."
  elsif get_hand_value('computer') >= get_hand_value('player')
    puts "DEALER WINS."
  else
    puts "CONGRATS! YOU WIN."
  end

  puts "Play again? (y/n)"
  play_again = gets.chomp
  break if play_again == 'n'
end