# 1. show empty new board
# => draw board
# => mark empty values for square
# 2. ask the user for input
# => system shows available spots
# => user input takes one of the spots
# 3. ask the computer for input
# => system shows available spots
# => computer takes one of the spots
# 4. see if there's winner
# => see if the input from one user forms a line
# 5. see if board is full
# 6. if neither 4 and 5 is true, go back to 2
# 7. announce winner and ask if play again
WINNING_COMBO = [[1, 2, 3], [4, 5, 6], [7, 8, 9], 
                 [1, 4, 7], [2, 5, 8], [3, 6, 9],
                 [1, 5, 9], [3, 5, 7]]

def show_board(mrks)
  puts "     |     |     "
  puts "  #{mrks[0]}  |  #{mrks[1]}  |  #{mrks[2]}  "
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{mrks[3]}  |  #{mrks[4]}  |  #{mrks[5]}  "
  puts "     |     |     "
  puts "------------------"
  puts "     |     |     "
  puts "  #{mrks[6]}  |  #{mrks[7]}  |  #{mrks[8]}  "
  puts "     |     |     "
  puts ""
end

def available_marker_spots(mrks)
  spots_by_index = mrks.each_index.select { |i| mrks[i] == " " }
  spots = []
  spots_by_index.each { |x| spots << (x + 1) }
  spots
end

def find_winner(mrks)
  winner = nil
  WINNING_COMBO.each do |combo|
    if mrks[combo[0] - 1] == 'X' && mrks[combo[1] - 1] == 'X' && mrks[combo[2] - 1] == 'X'
      winner = 'computer'
      break
    elsif mrks[combo[0] - 1] == 'O' && mrks[combo[1] - 1] == 'O' && mrks[combo[2] - 1] == 'O'
      winner = 'user'
      break
    else
      winner = nil
    end
  end
  winner
end

loop do
  puts "Welcome to Tic Tac Toe"
  markers = []
  9.times do
    markers << " "
  end
  show_board(markers)

  loop do
    puts "You are O and the computer is X"
    puts "Please choose one spot:"
    puts "from #{available_marker_spots(markers)}"

    user_spot = gets.chomp.to_i - 1
    markers[user_spot] = 'O'
    show_board(markers)
    break if find_winner(markers)

    computer_spot = available_marker_spots(markers).sample - 1
    markers[computer_spot] = 'X'
    show_board(markers)
    break if find_winner(markers)
  end
  puts "The winner is #{find_winner(markers)}"
  puts "Would you like to play again?(y/n)"
  play_again = !!(gets.chomp.downcase == 'y')
  break if !play_again
end
