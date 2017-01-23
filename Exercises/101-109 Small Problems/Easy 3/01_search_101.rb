puts "Enter the 1st number: "
num_1st = gets.chomp.to_i
puts num_1st

puts "Enter the 2nd number: "
num_2nd = gets.chomp.to_i
puts num_2nd

puts "Enter the 3rd number: "
num_3rd = gets.chomp.to_i
puts num_3rd

puts "Enter the 4th number: "
num_4th = gets.chomp.to_i
puts num_4th

puts "Enter the 5th number: "
num_5th = gets.chomp.to_i
puts num_5th

puts "Enter the last number: "
last_num = gets.chomp.to_i
puts last_num

arr = [num_1st, num_2nd, num_3rd, num_4th, num_5th]

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}."
else
  puts "The number #{last_num} does not appear in #{arr}."
end