puts "=> Enter the first number:"
num_1st = gets.chomp.to_i
puts "=> Enter the second number:"
num_2nd = gets.chomp.to_i

sum = num_1st + num_2nd
difference = num_1st - num_2nd
product = num_1st * num_2nd
quotient = num_1st / num_2nd
remainder = num_1st % num_2nd
power = num_1st ** num_2nd

puts "=> #{num_1st} + #{num_2nd} = #{sum}"
puts "=> #{num_1st} - #{num_2nd} = #{difference}"
puts "=> #{num_1st} * #{num_2nd} = #{product}"
puts "=> #{num_1st} / #{num_2nd} = #{quotient}"
puts "=> #{num_1st} % #{num_2nd} = #{remainder}"
puts "=> #{num_1st} ** #{num_2nd} = #{power}"