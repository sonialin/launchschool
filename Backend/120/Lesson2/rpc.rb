class Player
  attr_accessor :name, :move

  def initialize(name)
    @name = name
  end

  def >(other_player)
    case move
      when 'paper' then other_player.move == 'rock'
      when 'scissors' then other_player.move == 'paper'
      when 'rock' then other_player.move == 'scissors'
    end
  end

  def to_s
    name
  end
end

class MainGame
  attr_accessor :computer, :human

  def initialize
    puts "Welcome to Rock, Paper, Scissors"
    puts "Please enter your name:"
    human_name = gets.chomp
    @human = Player.new(human_name)
    @computer = Player.new('computer')
    puts "Hi #{@human.name}"
  end

  def play
    puts "Please choose your move:"
    @human.move = gets.chomp
    puts "Your move is #{@human.move}"
    puts "Computer chooses its move:"
    @computer.move = ['rock', 'paper', 'scissors'].sample
    puts "Computer's move is #{@computer.move}"
    winner = round_winner
    if winner
      puts "Winner of this round is #{winner}."
    else
      puts "It's a tie."
    end
  end

  def round_winner
    if @human > @computer
      @human
    elsif @computer > @human
      @computer
    else
      nil
    end
  end
end

MainGame.new.play