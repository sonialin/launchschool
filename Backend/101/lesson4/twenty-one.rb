SUITS = ['diamond', 'spade', 'heart', 'club']
FACE_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
MAX_HAND_VALUE = 31
MIN_DEALER_HAND_VALUE = 27
@dealer_score = 0
@player_score = 0
@round_number = 0

def init_game
  @computer_hand = []
  @player_hand = []
  @deck = []
  @round_number += 1
  @has_round_winner = false
  @round_winner = nil
  puts "======== Welcome to #{MAX_HAND_VALUE}: ROUND #{@round_number} ========"
end

def init_deck
  SUITS.each do |suit|
    FACE_VALUES.each do |face_values|
      @deck << [suit, face_values]
    end
  end
end

def deal(role)
  card = @deck.sample
  @deck.delete(card)
  if role == 'computer'
    @computer_hand << card
  else
    @player_hand << card
  end
end

def calculate_hand_value(hand)
  value_without_aces = 0
  final_value = 0
  num_of_aces = 0

  hand.each do |card|
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
      break if final_value <= MAX_HAND_VALUE || num_of_aces_valued_1 == num_of_aces
      num_of_aces_valued_11 -= 1
      num_of_aces_valued_1 += 1
    end
  else
    final_value = value_without_aces
  end
  final_value
end

def get_hand_value(role)
  if role == 'computer'
    return calculate_hand_value(@computer_hand)
  else
    return calculate_hand_value(@player_hand)
  end
end

def show_hand
  print "Dealer has: " + @computer_hand.first.to_s
  (@computer_hand.size - 1 ).times {print '[?, ?]'}
  puts ""
  puts "You have: " + @player_hand.to_s
end

def show_full_hand
  puts "====SHOW HAND: ROUND #{@round_number}===="
  puts "Dealer's hand is #{@computer_hand}"
  puts "Your hand is #{@player_hand}"
end

loop do
  init_game
  init_deck

  2.times do
    deal('computer')
    deal('player')
  end

  puts "Your turn."
  loop do
    if get_hand_value('player') > MAX_HAND_VALUE
      @has_round_winner = true
      @round_winner = 'dealer'
      puts "BOO! YOU BUSTED."
      break 
    end

    show_hand
    puts "Hit? (y/n)"
    hit = gets.chomp
    break if hit == 'n'
    deal('player')
  end

  
  if @has_round_winner == false
    puts "Dealer's turn."
    loop do
      if get_hand_value('computer') > MAX_HAND_VALUE
        @has_round_winner = true
        @round_winner = 'player'
        puts "HA! DEALER BUSTED."
        break
      elsif get_hand_value('computer') >= MIN_DEALER_HAND_VALUE
        show_hand
        puts "Dealer stays."
        break
      else
        show_hand
        puts "Dealer hits."
        deal('computer')  
      end
    end
  end

  show_full_hand

  dealer_hand_value = get_hand_value('computer')
  player_hand_value = get_hand_value('player')

  puts "Dealer's hand's value is #{dealer_hand_value}"
  puts "Your hand's value is #{player_hand_value}"

  if @has_round_winner
    if @round_winner == 'dealer'
      puts "DEALER WINS THIS ROUND."
      @dealer_score += 1
    else
      puts "YOU WIN THIS ROUND."
      @player_score += 1
    end
  elsif dealer_hand_value > player_hand_value
    puts "DEALER WINS THIS ROUND."
    @dealer_score += 1
  elsif dealer_hand_value == player_hand_value
    puts "IT'S A TIE."
  else
    puts "CONGRATS! YOU WIN THIS ROUND."
    @player_score += 1
  end

  puts "                             "
  puts "-----------------------------"
  puts "|    YOU    |     DEALER    |"
  puts "|---------------------------|"
  puts "|     #{@player_score}     |        #{@dealer_score}      |"
  puts "-----------------------------"
  puts "                             "

  if @dealer_score == 5
    puts "THE DEALER WINS! GAME OVER."
    play_again = 'n'
  elsif @player_score == 5
    puts "YOU WIN THE GAME! CONGRATS."
    play_again = 'n'
  else
    puts "Play again? (y/n)"
    play_again = gets.chomp
  end

  break if play_again == 'n'
end
