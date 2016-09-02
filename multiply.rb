def multiply(a, b)
  a * b
end

puts "Enter two integer numbers to multiply"
a = gets.chomp.to_i
b = gets.chomp.to_i

puts "The product of #{a} and #{b} is #{multiply(a, b)}"