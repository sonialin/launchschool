puts "Please enter a string:"

string = gets.chomp

if string.length > 10
  puts string.upcase
else
  puts string
end