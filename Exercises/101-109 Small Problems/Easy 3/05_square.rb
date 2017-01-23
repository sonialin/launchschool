puts "Enter a number to square."
num = gets.chomp.to_f

def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(n, n)
end

puts square(num)