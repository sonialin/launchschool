puts "Enter two numbers for multiplication."
puts "Enter the 1st number:"
num1 = gets.chomp.to_f
puts "Enter the 2nd number:"
num2 = gets.chomp.to_f

def multiply(n1, n2)
  n1 * n2
end

puts multiply(num1, num2)