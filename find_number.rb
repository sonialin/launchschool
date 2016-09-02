puts "Enter an integer to check in the array:"

number = gets.chomp.to_i
a = [1, 3, 4, 9, 6, 2]

if a.include?(number)
  puts "#{number} is in the array"
else 
  puts "#{number} is not in the array"
end

