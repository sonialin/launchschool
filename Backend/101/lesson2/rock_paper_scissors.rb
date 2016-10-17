require 'io/console' 

@@user_score = 0
@@computer_score = 0

def prompt(msg)
  puts "=> #{msg}"
end

def continue()                                                                                                   
  STDIN.getch                                                                                                              
  print "            \r"
end

def win?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') ||
  (player1 == 'rock' && player2 == 'lizard') ||
  (player1 == 'paper' && player2 == 'rock') ||
  (player1 == 'paper' && player2 == 'spock') ||
  (player1 == 'scissors' && player2 == 'paper') ||
  (player1 == 'scissors' && player2 == 'lizard') ||
  (player1 == 'lizard' && player2 == 'paper') ||
  (player1 == 'lizard' && player2 == 'spock') || 
  (player1 == 'spock' && player2 == 'rock') ||
  (player1 == 'spock' && player2 == 'scissors')  
end

def round_winner(user, computer)
  if win?(user, computer)
    'user'
  elsif win?(computer, user)
    'computer'
  else
    'neither'
  end
end

def final_winner()
  if @@user_score > @@computer_score
    'user'
  else
    'computer'
  end
end

def increment_score(player)
  if player == 'computer'
    @@computer_score+=1
  else
    @@user_score+=1
  end
end

def score(player)
  if player = 'user'
    return @@user_score
  else
    return @@computer_score
  end
end

def if_score_reaches_5(player)
end

game_options = %w(rock paper scissors spock lizard)

loop do
  prompt("Welcome to Rock, Paper, Scissors.")
  prompt("AND Spock, Lizard.")

  round_number = 0

  loop do
    user_choice = nil
    round_number+=1
    loop do
      prompt("ROUND #{round_number}")
      prompt("Please type one of the follwing: #{game_options}.")
      user_choice = gets.chomp.downcase
      break if game_options.include?(user_choice)
    end

    prompt("You chose #{user_choice}.")
    prompt("Press ENTER for computer's turn.")
    continue()
    prompt("Now's the computer's turn.")
    computer_choice = game_options.sample
    prompt("The computer chose #{computer_choice}.")
    prompt("Press ENTER for to find out winner of the round.")
    continue()
    round_winner = round_winner(user_choice, computer_choice)
    prompt("The winner of this round is: #{round_winner}.")
    
    unless round_winner == 'neither'
      increment_score(round_winner)
    end
    
    prompt("Your score: #{@@user_score}")
    prompt("Computer score: #{@@computer_score}")

    break if @@user_score == 5 && @@computer_score == 5

    prompt("Keep playing until someone wins? (Y/N)")
    keep_playing = gets.chomp.downcase
    break unless keep_playing == 'y'  
  end

  break if @@user_score < 5 && @@computer_score < 5
  
  prompt("Final winner is #{final_winner()}")
  prompt("Do you want to play again? (Y/N)")
  play_again = gets.chomp.downcase
  break unless play_again == 'y'
end

prompt("Thank you for joining us. Goodbye!")
