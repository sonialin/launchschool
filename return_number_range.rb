puts "Please enter a number between 0 to 100:"

number = gets.chomp.to_i

def return_range(num)
  case 
    when num < 0
      "below 0"
    when num >= 0 && num <= 50
      "0-50"
    when num >= 51 && num <= 100
      "51-100"
    else 
      "above 100"
    end
end

puts "The number is in the range:\n#{return_range(number)}"