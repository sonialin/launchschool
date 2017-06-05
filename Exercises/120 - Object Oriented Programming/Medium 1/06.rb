class Guess
  include Comparable
  NUMBER_RANGE = (1..100).to_a

  def initialize(number)
    @number = number
  end

  def <=>(other)
    @number <=> other
  end

  def to_s
    @number
  end
end

class GuessingGame
  attr_reader :number_of_guesses_left

  def initialize
    @number_of_guesses_left = 7
    @answer = Guess::NUMBER_RANGE.sample
  end

  def play
    loop do
      announces_number_of_guesses_left
      prompt_for_input
      evaluate_and_announce_result
      break if answer_correct?
      check_number_of_guesses_left
      break if @number_of_guesses_left == 0
    end
  end

  def announces_number_of_guesses_left
    puts "You have #{number_of_guesses_left} guesses remaining."
  end

  def prompt_for_input
    loop do 
      print "Enter a number between 1 and 100: "
      input = gets.chomp
      if input.to_i.to_s == input
        number = input.to_i
        @guess = Guess.new(number)
        break
      else
        puts "Invalid input"
      end
    end
  end

  def evaluate_and_announce_result
    if @guess < @answer
      puts "Too low"
    elsif @guess > @answer
      puts "Too high"
    else
      puts "You win!"
    end
  end

  def answer_correct?
    @guess == @answer
  end

  def check_number_of_guesses_left
    if @number_of_guesses_left > 0
      @number_of_guesses_left -= 1
    end

    if @number_of_guesses_left == 0
      puts "No guesses left. You lose!"
    end
  end
end

game = GuessingGame.new
game.play